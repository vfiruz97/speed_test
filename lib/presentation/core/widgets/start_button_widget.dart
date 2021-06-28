import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/presentation/core/widgets/test_start_button_widget.dart';

import 'display_speed_card_widget.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          TestStartButtonWidget(
            label: "TEST",
            onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
              const PageNavigationEvent.changedCurrentPage(
                newCurrentPage: PageName.startLoadingPage,
                newCurrentBottomNavigationIndex: 1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              DisplaySpeedCardWidget(),
              SizedBox(width: 8),
              DisplaySpeedCardWidget(label: "UPLOAD"),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
