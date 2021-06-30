import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:speed_test/application/notification/notification_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/application/rate/rate_bloc.dart';
import 'package:speed_test/application/subscribe_notification/subscribe_notification_bloc.dart';
import 'package:speed_test/application/test_speed/test_speed_bloc.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/core/functions/bottom_navigation_bar.dart';
import 'package:speed_test/presentation/core/widgets/notification_dialog_widget.dart';
import 'package:speed_test/presentation/core/widgets/rate_dialog_widget.dart';
import 'package:speed_test/presentation/core/widgets/start_button_widget.dart';
import 'package:speed_test/presentation/core/widgets/subscibe_dialog_widget.dart';
import 'package:speed_test/presentation/history/history_page.dart';
import 'package:speed_test/presentation/history/history_show/history_show_page.dart';
import 'package:speed_test/presentation/history/history_show/widgets/settings_page_title_bar_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_page_title_bar_widget.dart';
import 'package:speed_test/presentation/settings/settings_page.dart';
import 'package:speed_test/presentation/start_page/start_display_network_speed_page.dart';
import 'package:speed_test/presentation/start_page/test_network_speed_page.dart';
import 'package:speed_test/presentation/start_page/widgets/test_page_title_bar_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<NotificationBloc, NotificationState>(
              listenWhen: (c, p) => c.message != p.message,
              listener: (context, state) async {
                if (state.message.isNotEmpty) {
                  final List<Map<String, bool>> result = await showDialog(
                    context: context,
                    builder: (context) {
                      return NotificationDialogWidget(
                        title: "Notification",
                        message: state.message,
                      );
                    },
                  );
                  if (result[0]["pressedYes"]) {
                    Future.delayed(
                      const Duration(seconds: 1),
                      () => BlocProvider.of<PageNavigationBloc>(context).add(
                        const PageNavigationEvent.changedCurrentPage(
                          newCurrentPage: PageName.startPage,
                          newCurrentBottomNavigationIndex: 1,
                        ),
                      ),
                    );
                  }
                }
              },
            ),
            BlocListener<SubscribeNotificationBloc, SubscribeNotificationState>(
              listenWhen: (c, p) => c.title != p.title,
              listener: (context, state) async {
                await showDialog(
                  context: context,
                  barrierDismissible: false,
                  useSafeArea: false,
                  barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
                  builder: (context) {
                    return SubscibeDialogWidget(
                      title: state.title,
                      describtion: state.describtion,
                    );
                  },
                );
              },
            ),
            BlocListener<RateBloc, RateState>(
              listenWhen: (p, c) => p.showRateDialog != c.showRateDialog,
              listener: (context, state) async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return const RateDialogWidget(
                      title: 'Enjoing Speed Test & Wifi\nAnalyzer?',
                      message: "Tap a star to rate it on the App Store.",
                    );
                  },
                );
              },
            ),
          ],
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: BlocBuilder<PageNavigationBloc, PageNavigationState>(
                  builder: (context, state) {
                    switch (state.currentPageName) {
                      case PageName.startPage:
                        return const StartButtonWidget();
                        break;
                      case PageName.startLoadingPage:
                        return BlocProvider(
                          create: (context) =>
                              TestSpeedBloc(speedRepository: SpeedRepository()),
                          child: const TestNetworkSpeedPage(),
                        );
                        break;
                      case PageName.startDisplayNetworkSpeedPage:
                        return const StartDisplayNetworkSpeedPage();
                        break;
                      // History menu
                      case PageName.historyPage:
                        return const HistoryPage();
                        break;
                      case PageName.historyShow:
                        return HistoryShowPage(
                          speed: (state.data is Speed)
                              ? state.data as Speed
                              : null,
                        );
                        break;
                      case PageName.historyEmptyPage:
                        return const SizedBox();
                        break;
                      case PageName.settingsPage:
                        return const SettingsPage();
                        break;
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ),
              BlocBuilder<PageNavigationBloc, PageNavigationState>(
                builder: (context, state) {
                  // TITLE BAR
                  switch (state.currentBottomNavigationIndex) {
                    case 0:
                      return HistoryPageTitleBarWidget(state: state);
                      break;
                    case 1:
                      return TestPageTitleBarWidget(state: state);
                      break;
                    case 2:
                      return const SettingsPageTitleBarWidget();
                      break;
                    default:
                      return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
