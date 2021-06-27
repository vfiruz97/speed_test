import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/history/widgets/date_time_card_widget.dart';
import 'package:speed_test/presentation/history/widgets/speed_card_widget.dart';

class HistoryCardWidget extends StatelessWidget {
  const HistoryCardWidget({
    Key key,
    @required this.speed,
    @required this.backgroundColor,
  }) : super(key: key);

  final Speed speed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<PageNavigationBloc>(context).add(
          PageNavigationEvent.changedCurrentPage(
            newCurrentPage: PageName.historyShow,
            newCurrentBottomNavigationIndex: 0,
            data: speed,
          ),
        );
      },
      child: Container(
        height: 168,
        padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: DateTimeCardWidget(speed: speed)),
            Expanded(child: SpeedCardWidget(speed: speed)),
          ],
        ),
      ),
    );
  }
}
