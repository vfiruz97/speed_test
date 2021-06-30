import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/application/subscribe_notification/subscribe_notification_bloc.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/core/widgets/test_start_button_widget.dart';

import 'display_speed_card_widget.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({
    Key key,
  }) : super(key: key);

  Future<bool> checkLimit() async {
    final SpeedRepository speedRepository = SpeedRepository();
    return speedRepository.pastLimit();
  }

  @override
  Widget build(BuildContext context) {
    checkLimit().then((pastLimit) {
      if (pastLimit) {
        // showing subscribtion modal window
        BlocProvider.of<SubscribeNotificationBloc>(context).add(
          const SubscribeNotificationEvent.show(
            title: "You have exceeded\nthe test limit",
            describtion: "Subscribe to a subscribtion\nto remove restrictions",
          ),
        );
      }
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TestStartButtonWidget(
          label: "TEST",
          onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
              newCurrentPage: PageName.startLoadingPage,
              newCurrentBottomNavigationIndex: 1,
            ),
          ),
        ),
        const SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            DisplaySpeedCardWidget(),
            SizedBox(width: 8),
            DisplaySpeedCardWidget(label: "UPLOAD"),
          ],
        ),
        const SizedBox(height: 96),
      ],
    );
  }
}
