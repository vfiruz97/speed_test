import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/notification_dialog_widget.dart';

AppBar buildAppBar() {
  return AppBar(
    shadowColor: Colors.white,
    elevation: 1,
    centerTitle: true,
    title: BlocBuilder<PageNavigationBloc, PageNavigationState>(
      builder: (context, state) {
        switch (state.currentBottomNavigationIndex) {
          case 0:
            return const Text('HISTORY', style: Style.appBarTitleStyle);
            break;
          case 1:
            return const Text('SPEED TEST', style: Style.appBarTitleStyle);
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
                      newCurrentBottomNavigationIndex: 1,
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
                      newCurrentBottomNavigationIndex: 1,
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
                        final Speed _speed =
                            (state.data is Speed) ? state.data as Speed : null;
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
                    newCurrentBottomNavigationIndex: 0,
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
