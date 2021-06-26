import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/asserts/style.dart';

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
                    newCurrentPage: PageName.historyPage,
                    newCurrentBottomNavigationIndex: 0,
                  ),
                );
                break;
              case 1:
                BlocProvider.of<PageNavigationBloc>(context).add(
                  const PageNavigationEvent.changedCurrentPage(
                    newCurrentPage: PageName.startPage,
                    newCurrentBottomNavigationIndex: 1,
                  ),
                );
                break;
              case 2:
                BlocProvider.of<PageNavigationBloc>(context).add(
                  const PageNavigationEvent.changedCurrentPage(
                    newCurrentPage: PageName.settingsPage,
                    newCurrentBottomNavigationIndex: 2,
                  ),
                );
                break;
              default:
                BlocProvider.of<PageNavigationBloc>(context).add(
                  const PageNavigationEvent.changedCurrentPage(
                    newCurrentPage: PageName.startPage,
                    newCurrentBottomNavigationIndex: 1,
                  ),
                );
            }
          },
          currentIndex: state.currentBottomNavigationIndex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            bottomNavigationBarItem(label: 'History', imageName: "history"),
            bottomNavigationBarItem(label: 'Speed-Test', imageName: "shuttle"),
            bottomNavigationBarItem(label: 'Settings', imageName: "settings"),
          ],
        ),
      );
    },
  );
}

BottomNavigationBarItem bottomNavigationBarItem(
    {String label, String imageName}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        "assets/images/$imageName.svg",
        height: 24,
        width: 24,
      ),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        "assets/images/$imageName.svg",
        height: 24,
        width: 24,
        color: const Color.fromRGBO(79, 176, 168, 1),
      ),
    ),
  );
}
