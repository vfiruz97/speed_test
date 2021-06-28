import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class HistoryCardWidget extends StatelessWidget {
  const HistoryCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  final Speed speed;

  String _dateFormat(DateTime date) {
    final String day = date.day.toString(),
        month = date.month.toString(),
        year = date.year.toString();
    return "$day/$month/$year";
  }

  String _timeFormat(DateTime date) {
    return "${date.hour}:${date.minute}";
  }

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
      child: SizedBox(
        height: 56,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 58) / 4,
                    child: const Icon(Icons.wifi, size: 28),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 58) / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _dateFormat(speed.dateTime.getOrCrash()),
                          overflow: TextOverflow.ellipsis,
                          style: Style.speedometrDisplayTextStyle,
                        ),
                        Text(
                          _timeFormat(speed.dateTime.getOrCrash()),
                          overflow: TextOverflow.ellipsis,
                          style: Style.speedometrDisplayTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width - 58) / 4,
                    child: Text(
                      speed.downloadSpeed.value.getOrCrash().toString(),
                      overflow: TextOverflow.ellipsis,
                      style: Style.speedHistoryTableStyle,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width - 58) / 4,
                    child: Text(
                      speed.uploadSpeed.value.getOrCrash().toString(),
                      overflow: TextOverflow.ellipsis,
                      style: Style.speedHistoryTableStyle,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.chevron_right,
                color: Color.fromRGBO(160, 160, 160, 1),
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
