import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';

BlocBuilder<PageNavigationBloc, PageNavigationState>
    buildBottomNavigationBar() {
  return BlocBuilder<PageNavigationBloc, PageNavigationState>(
    builder: (context, state) {
      return Container(
        height: 102,
        color: const Color.fromRGBO(16, 26, 38, 1),
        padding: const EdgeInsets.only(top: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createNavigationItem(
              state: state,
              iconImage: "test_speed_new",
              index: 1,
              onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
                const PageNavigationEvent.changedCurrentPage(
                  newCurrentPage: PageName.startPage,
                  newCurrentBottomNavigationIndex: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SvgPicture.asset("assets/images/line.svg"),
            ),
            createNavigationItem(
              state: state,
              iconImage: "history_new",
              index: 0,
              onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
                const PageNavigationEvent.changedCurrentPage(
                  newCurrentPage: PageName.historyPage,
                  newCurrentBottomNavigationIndex: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SvgPicture.asset("assets/images/line.svg"),
            ),
            createNavigationItem(
              state: state,
              iconImage: "settings_new",
              index: 2,
              onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
                const PageNavigationEvent.changedCurrentPage(
                  newCurrentPage: PageName.settingsPage,
                  newCurrentBottomNavigationIndex: 2,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Expanded createNavigationItem({
  PageNavigationState state,
  String iconImage,
  int index,
  Function onPressed,
}) {
  return Expanded(
    child: IconButton(
      padding: EdgeInsets.zero,
      iconSize: 28,
      onPressed: () => onPressed(),
      icon: SvgPicture.asset(
        "assets/images/$iconImage.svg",
        color: state.currentBottomNavigationIndex == index
            ? const Color.fromRGBO(111, 227, 19, 1)
            : Colors.white,
      ),
    ),
  );
}
