import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/history_title_column_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_card_widget.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final SpeedRepository speedRepository = SpeedRepository();
  List<Speed> speedList = [];

  @override
  void initState() {
    getAllSpeeds();
    super.initState();
  }

  Future<void> getAllSpeeds() async {
    speedList = await speedRepository.getAll();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 88,
          decoration: Style.historyTitleRowDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HistoryTitleColumnWidget(
                title: "Network",
                subTitle: "Type",
              ),
              HistoryTitleColumnWidget(
                title: "Date",
                subTitle: "Time",
              ),
              HistoryTitleColumnWidget(
                title: "Download",
                subTitle: "Mbps",
              ),
              HistoryTitleColumnWidget(
                title: "Upload",
                subTitle: "Mbps",
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: speedList.length,
            itemBuilder: (context, index) {
              return HistoryCardWidget(
                speed: speedList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
