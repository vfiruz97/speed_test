import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
      height: 100,
      width: double.infinity,
      color: const Color.fromRGBO(23, 34, 48, 1),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 48),
            const Text(
              'History',
              style: Style.titleBarTitleStyle,
            ),
            if (state.currentPageName == PageName.historyShow)
              IconButton(
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset("assets/images/trash_new.svg"),
                onPressed: () async {
                  final List<Map<String, bool>> result = await showDialog(
                    context: context,
                    builder: (context) {
                      return const NotificationDialogWidget(
                        title: "Clear the result",
                        message: "Are you sure you want to delete this result?",
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
              )
            else
              IconButton(
                icon: SvgPicture.asset("assets/images/trash_new.svg"),
                onPressed: () async {
                  final List<Map<String, bool>> result = await showDialog(
                    context: context,
                    builder: (context) {
                      return const NotificationDialogWidget(
                        title: "Clear history",
                        message:
                            "Are you sure you want to clear your entire result history?",
                      );
                    },
                  );

                  if (result[0]["pressedYes"]) {
                    await SpeedRepository().deleteAll();
                    Future.delayed(
                      const Duration(seconds: 1),
                      () => BlocProvider.of<PageNavigationBloc>(context).add(
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
    );
  }
}
