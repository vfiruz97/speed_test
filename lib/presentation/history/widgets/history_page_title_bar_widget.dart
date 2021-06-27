import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/notification_dialog_widget.dart';

class HistoryPageTitleBarWidget extends StatelessWidget {
  final PageNavigationState state;
  const HistoryPageTitleBarWidget({
    Key key,
    @required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: Style.titleBarDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                BlocProvider.of<PageNavigationBloc>(context).add(
                  PageNavigationEvent.changedCurrentPage(
                    newCurrentPage:
                        state.currentPageName == PageName.historyShow
                            ? PageName.historyPage
                            : PageName.startPage,
                    newCurrentBottomNavigationIndex:
                        state.currentPageName == PageName.historyShow ? 0 : 1,
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.arrow_back_ios),
                  Text('Back', style: Style.cancelButtonStyle),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'History',
                  style: Style.titleBarTitleStyle,
                ),
                if (state.currentPageName == PageName.historyShow)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/images/share.svg",
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () async {
                          await Share.share(
                            "Speed Test checks a real speed of an Internet: Find it in App Store!",
                            subject: "Speed Test",
                          );
                        },
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/images/trash.svg",
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () async {
                          final List<Map<String, bool>> result =
                              await showDialog(
                            context: context,
                            builder: (context) {
                              return const NotificationDialogWidget(
                                title: "Delete result",
                                message:
                                    "Are you sure you want to delete this result?",
                                submitButtonLabel: "Delete",
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
                                newCurrentBottomNavigationIndex: 0,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  )
                else
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/images/trash.svg",
                      height: 24,
                      width: 19,
                    ),
                    onPressed: () async {
                      final List<Map<String, bool>> result = await showDialog(
                        context: context,
                        builder: (context) {
                          return const NotificationDialogWidget(
                            title: "Clear history",
                            message: "Are you sure you want to clear history?",
                          );
                        },
                      );

                      if (result[0]["pressedYes"]) {
                        await SpeedRepository().deleteAll();
                        Future.delayed(
                          const Duration(seconds: 1),
                          () =>
                              BlocProvider.of<PageNavigationBloc>(context).add(
                            const PageNavigationEvent.changedCurrentPage(
                              newCurrentPage: PageName.historyEmptyPage,
                              newCurrentBottomNavigationIndex: 0,
                            ),
                          ),
                        );
                      }
                    },
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
