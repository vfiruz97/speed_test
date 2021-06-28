import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';

import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/display_speed_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/test_start_button_widget.dart';

class StartDisplayNetworkSpeedPage extends StatelessWidget {
  const StartDisplayNetworkSpeedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 10),
        Column(
          children: [
            const Text('All Finished', style: Style.textFirstHeader),
            const SizedBox(height: 40),
            TestStartButtonWidget(
              label: "RETEST",
              onPressed: () => BlocProvider.of<PageNavigationBloc>(context).add(
                const PageNavigationEvent.changedCurrentPage(
                  newCurrentPage: PageName.startLoadingPage,
                  newCurrentBottomNavigationIndex: 1,
                ),
              ),
            ),
          ],
        ),
        const SpeedCards(),
        const SizedBox(height: 60),
      ],
    );
  }
}

class SpeedCards extends StatefulWidget {
  const SpeedCards({
    Key key,
  }) : super(key: key);

  @override
  _SpeedCardsState createState() => _SpeedCardsState();
}

class _SpeedCardsState extends State<SpeedCards> {
  SpeedRepository speedRepository;
  double uploadRate = 0;
  double downloadRate = 0;
  String uploadUnit = 'Mbps';
  String downloadUnit = 'Mbps';

  @override
  void initState() {
    super.initState();
    speedRepository = SpeedRepository();

    _getSpeed();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplaySpeedCardWidget(
          speedValue: downloadRate.toString(),
        ),
        const SizedBox(width: 8),
        DisplaySpeedCardWidget(
          speedValue: uploadRate.toString(),
          label: 'UPLOAD',
        ),
      ],
    );
  }

  Future<void> _getSpeed() async {
    final Speed speed = await speedRepository.getLast();
    setState(() {
      downloadRate = speed.downloadSpeed.value.getOrCrash();
      downloadUnit = speed.downloadSpeed.unit.getOrCrash();
      uploadRate = speed.uploadSpeed.value.getOrCrash();
      uploadUnit = speed.uploadSpeed.unit.getOrCrash();
    });
  }
}
