import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';

import 'package:speed_test/application/notification/notification_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/application/test_speed/test_speed_bloc.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/notification_dialog_widget.dart';
import 'package:speed_test/presentation/core/widgets/start_button_widget.dart';
import 'package:speed_test/presentation/history/history_page.dart';
import 'package:speed_test/presentation/history/history_show/history_show_page.dart';
import 'package:speed_test/presentation/start_page/start_display_network_speed_page.dart';
import 'package:speed_test/presentation/start_page/test_network_speed_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocListener<NotificationBloc, NotificationState>(
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
                          newCurrentPage: PageName.startPage)));
            }
          }
        },
        child: BlocBuilder<PageNavigationBloc, PageNavigationState>(
          builder: (context, state) {
            switch (state.currentPageName) {
              case PageName.startPage:
                return const Center(child: StartButtonWidget());
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
                    speed: (state.data is Speed) ? state.data as Speed : null);
                break;
              case PageName.historyEmptyPage:
                return const SizedBox();
                break;
              default:
                return const SizedBox();
            }
          },
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BlocBuilder<PageNavigationBloc, PageNavigationState>
      buildBottomNavigationBar() {
    return BlocBuilder<PageNavigationBloc, PageNavigationState>(
      builder: (context, state) {
        return Container(
          decoration: Style.bottomNavigationBarDecoration,
          child: BottomNavigationBar(
            onTap: (index) {
              switch (index) {
                case 0:
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.startPage,
                      newCurrentBottomNavigationIndex: 0,
                    ),
                  );
                  break;
                case 1:
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.historyPage,
                      newCurrentBottomNavigationIndex: 1,
                    ),
                  );
                  break;
                case 2:
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.startPage,
                      newCurrentBottomNavigationIndex: 2,
                    ),
                  );
                  break;
                default:
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.startPage,
                      newCurrentBottomNavigationIndex: 0,
                    ),
                  );
              }
            },
            currentIndex: state.currentBottomNavigationIndex,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                label: 'Test',
                icon: Icon(Icons.wifi),
              ),
              const BottomNavigationBarItem(
                label: 'History',
                icon: Icon(Icons.history),
              ),
              const BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      shadowColor: Colors.white,
      elevation: 1,
      centerTitle: true,
      title: BlocBuilder<PageNavigationBloc, PageNavigationState>(
        builder: (context, state) {
          switch (state.currentBottomNavigationIndex) {
            case 0:
              return const Text('SPEED TEST', style: Style.appBarTitleStyle);
              break;
            case 1:
              return const Text('HISTORY', style: Style.appBarTitleStyle);
              break;
            case 2:
              return const Text('SETTINGS', style: Style.appBarTitleStyle);
              break;
            default:
              return const Text('UNKNOWN PAGE', style: Style.appBarTitleStyle);
          }
        },
      ),
      actions: [
        BlocBuilder<PageNavigationBloc, PageNavigationState>(
          builder: (context, state) {
            switch (state.currentPageName) {
              case PageName.startPage:
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    BlocProvider.of<PageNavigationBloc>(context).add(
                      const PageNavigationEvent.changedCurrentPage(
                        newCurrentPage: PageName.startLoadingPage,
                        newCurrentBottomNavigationIndex: 0,
                      ),
                    );
                  },
                );
                break;
              case PageName.startLoadingPage:
                return TextButton(
                  child: const Text('CANCEL', style: Style.cancelButtonStyle),
                  onPressed: () {
                    BlocProvider.of<PageNavigationBloc>(context).add(
                      const PageNavigationEvent.changedCurrentPage(
                        newCurrentPage: PageName.startPage,
                        newCurrentBottomNavigationIndex: 0,
                      ),
                    );
                    // TODO: Cancel loading and back to startPage
                  },
                );
                break;
              case PageName.startDisplayNetworkSpeedPage:
                return IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: Color.fromRGBO(74, 89, 103, 1),
                  ),
                  onPressed: () async {
                    final Speed speed = await SpeedRepository().getLast();
                    final downloadRate = speed.downloadSpeed.value.getOrCrash();
                    final downloadUnit = speed.downloadSpeed.unit.getOrCrash();
                    final uploadRate = speed.uploadSpeed.value.getOrCrash();
                    final uploadUnit = speed.uploadSpeed.unit.getOrCrash();
                    await Share.share(
                      "Speed Test: download rate: $downloadRate $downloadUnit and upload rate: $uploadRate $uploadUnit",
                      subject: "Speed Test",
                    );
                  },
                );
                break;
              case PageName.historyPage:
                return Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        color: Color.fromRGBO(74, 89, 103, 1),
                      ),
                      onPressed: () async {
                        await Share.share(
                          "Speed Test checks a real speed of an Internet: Find it in App Store!",
                          subject: "Speed Test",
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromRGBO(74, 89, 103, 1),
                      ),
                      onPressed: () async {
                        final List<Map<String, bool>> result = await showDialog(
                          context: context,
                          builder: (context) {
                            return const NotificationDialogWidget(
                              title: "Clear history",
                              message:
                                  "Are you sure you want to clear history?",
                            );
                          },
                        );

                        if (result[0]["pressedYes"]) {
                          await SpeedRepository().deleteAll();
                          Future.delayed(
                            const Duration(seconds: 1),
                            () => BlocProvider.of<PageNavigationBloc>(context)
                                .add(
                              const PageNavigationEvent.changedCurrentPage(
                                newCurrentPage: PageName.historyEmptyPage,
                                newCurrentBottomNavigationIndex: 1,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                );
                break;
              case PageName.historyShow:
                return Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        color: Color.fromRGBO(74, 89, 103, 1),
                      ),
                      onPressed: () async {
                        await Share.share(
                          "Speed Test checks a real speed of an Internet: Find it in App Store!",
                          subject: "Speed Test",
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromRGBO(74, 89, 103, 1),
                      ),
                      onPressed: () async {
                        final List<Map<String, bool>> result = await showDialog(
                          context: context,
                          builder: (context) {
                            return const NotificationDialogWidget(
                              title: "Clear history",
                              message:
                                  "Are you sure you want to delete this result?",
                            );
                          },
                        );

                        if (result[0]["pressedYes"]) {
                          final Speed _speed = (state.data is Speed)
                              ? state.data as Speed
                              : null;
                          if (_speed != null) {
                            await SpeedRepository().delete(_speed);
                          }
                          BlocProvider.of<PageNavigationBloc>(context).add(
                            const PageNavigationEvent.changedCurrentPage(
                              newCurrentPage: PageName.historyPage,
                              newCurrentBottomNavigationIndex: 1,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                );
                break;
              default:
                return const SizedBox();
            }
          },
        )
      ],
      leading: BlocBuilder<PageNavigationBloc, PageNavigationState>(
        builder: (context, state) {
          switch (state.currentPageName) {
            case PageName.historyShow:
              return InkWell(
                onTap: () {
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.historyPage,
                      newCurrentBottomNavigationIndex: 1,
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                    ),
                    Text("Back", style: Style.cancelButtonStyle),
                  ],
                ),
              );
              break;
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
