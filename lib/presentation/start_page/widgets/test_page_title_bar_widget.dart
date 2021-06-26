import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class TestPageTitleBarWidget extends StatelessWidget {
  final PageNavigationState state;
  const TestPageTitleBarWidget({
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (state.currentPageName == PageName.startLoadingPage)
            TextButton(
              child: const Text('Cancel', style: Style.cancelButtonStyle),
              onPressed: () {
                BlocProvider.of<PageNavigationBloc>(context).add(
                  const PageNavigationEvent.changedCurrentPage(
                    newCurrentPage: PageName.startPage,
                    newCurrentBottomNavigationIndex: 1,
                  ),
                );
                // TODO: Cancel loading and back to startPage
              },
            )
          else
            const SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 48, height: 50),
                const Text(
                  'Speed Test',
                  style: Style.titleBarTitleStyle,
                ),
                if (state.currentPageName ==
                    PageName.startDisplayNetworkSpeedPage)
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
                  )
                else
                  const SizedBox(width: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
