import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      onPressed: () {
        // TODO: run function
        BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
                newCurrentPage: PageName.startLoadingPage));
        print('tapped start button');
      },
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: Style.startButtonDecoration,
        child: const Text(
          'START',
          style: Style.startButtonStyle,
        ),
      ),
    );
  }
}
