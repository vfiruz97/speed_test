import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
              'Speed Test',
              style: Style.titleBarTitleStyle,
            ),
            if (state.currentPageName == PageName.startLoadingPage)
              IconButton(
                iconSize: 48,
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  "assets/images/red_close.svg",
                ),
                onPressed: () async {
                  BlocProvider.of<PageNavigationBloc>(context).add(
                    const PageNavigationEvent.changedCurrentPage(
                      newCurrentPage: PageName.startPage,
                      newCurrentBottomNavigationIndex: 1,
                    ),
                  );
                },
              )
            else
              const SizedBox(width: 48),
          ],
        ),
      ),
    );
  }
}
