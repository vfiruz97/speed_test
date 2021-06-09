import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    newCurrentPage: PageName.settingsPage,
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
