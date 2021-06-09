import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class RestartButtonWidget extends StatelessWidget {
  const RestartButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        //width: 328,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        height: 48,
        alignment: Alignment.center,
        decoration: Style.restartButtonDecoration,
        child: const Text('Restart', style: Style.restartButtonStyle),
      ),
      onPressed: () {
        BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
                newCurrentPage: PageName.startLoadingPage));
      },
    );
  }
}
