import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speedometer/flutter_speedometer.dart';

import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/start_button_widget.dart';
import 'package:speed_test/presentation/start_page/start_display_network_speed_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 1,
        title: BlocBuilder<PageNavigationBloc, PageNavigationState>(
          builder: (context, state) {
            if (state.currentPageName == PageName.startPage ||
                state.currentPageName == PageName.startLoadingPage ||
                state.currentPageName ==
                    PageName.startDisplayNetworkSpeedPage) {
              return const Text('SPEED TEST', style: Style.appBarTitleStyle);
            }

            return const Text('UNKNOWN PAGE', style: Style.appBarTitleStyle);
          },
        ),
        actions: [
          BlocBuilder<PageNavigationBloc, PageNavigationState>(
            builder: (context, state) {
              if (state.currentPageName == PageName.startPage) {
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // TODO: Run start button
                  },
                );
              }

              if (state.currentPageName == PageName.startLoadingPage) {
                return TextButton(
                  child: const Text('CANCEL', style: Style.cancelButtonStyle),
                  onPressed: () {
                    BlocProvider.of<PageNavigationBloc>(context).add(
                        const PageNavigationEvent.changedCurrentPage(
                            newCurrentPage: PageName.startPage));
                    // TODO: Cancel loading and back to startPage
                  },
                );
              }

              if (state.currentPageName ==
                  PageName.startDisplayNetworkSpeedPage) {
                return IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: Color.fromRGBO(74, 89, 103, 1),
                  ),
                  onPressed: () {
                    // TODO: sharing data
                  },
                );
              }

              return const SizedBox();
            },
          )
        ],
      ),
      body: BlocBuilder<PageNavigationBloc, PageNavigationState>(
        builder: (context, state) {
          if (state.currentPageName == PageName.startPage) {
            return const Center(child: StartButtonWidget());
          }

          if (state.currentPageName == PageName.startLoadingPage) {
            return Center(
              child: Speedometer(
                size: 232,
                maxValue: 180,
                currentValue: 76,
                warningValue: 10,
                displayText: 'Mbps',
                displayNumericStyle: Style.cardSpeedStyle,
                displayTextStyle: Style.cardSpeedMeasurementStyle,
              ),
            );
          }

          if (state.currentPageName == PageName.startDisplayNetworkSpeedPage) {
            return const StartDisplayNetworkSpeedPage();
          }

          return const SizedBox();
        },
      ),
      bottomNavigationBar: Container(
        decoration: Style.bottomNavigationBarDecoration,
        child: BottomNavigationBar(
          onTap: (index) {
            print(index);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Test',
              icon: Icon(Icons.wifi),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
