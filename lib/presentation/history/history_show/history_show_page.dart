import 'package:flutter/material.dart';

import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/history/history_show/widgets/info_label_widget.dart';

class HistoryShowPage extends StatefulWidget {
  final Speed speed;
  const HistoryShowPage({
    Key key,
    this.speed,
  }) : super(key: key);

  @override
  _HistoryShowPageState createState() => _HistoryShowPageState();
}

class _HistoryShowPageState extends State<HistoryShowPage> {
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
    if (widget.speed != null) {
      final Speed _speed = widget.speed;

      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DisplaySpeedCardResultWidget(
                  speed: _speed,
                  label: "Download Result",
                ),
                const SizedBox(width: 8),
                DisplaySpeedCardResultWidget(
                  speed: _speed,
                  label: "Upload Result",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  alignment: Alignment.centerRight,
                  child: Text(
                    _dateFormat(_speed.dateTime.getOrCrash()),
                    style: Style.dateTimeHistoryShowStyle,
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 160,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _timeFormat(_speed.dateTime.getOrCrash()),
                    overflow: TextOverflow.ellipsis,
                    style: Style.dateTimeHistoryShowStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8.0, left: 24),
            alignment: Alignment.centerLeft,
            child: const Text("Info", style: Style.informationHeaderStyle),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(16, 26, 38, 1),
              ),
              child: Column(
                children: [
                  InfoLabelWidget(
                    name: "WiFi Network Name",
                    value: _speed.wifiInfo.wifiName.getOrCrash(),
                  ),
                  InfoLabelWidget(
                    name: "IP Address",
                    value: _speed.wifiInfo.ipAddress.getOrCrash(),
                  ),
                  InfoLabelWidget(
                    name: "Server",
                    value: _speed.wifiInfo.serverName.getOrCrash(),
                  ),
                  InfoLabelWidget(
                    name: "Device",
                    value: _speed.deviceName.getOrCrash(),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    return Container();
  }
}

class DisplaySpeedCardResultWidget extends StatelessWidget {
  const DisplaySpeedCardResultWidget({
    Key key,
    @required Speed speed,
    @required String label,
  })  : _speed = speed,
        _label = label,
        super(key: key);

  final Speed _speed;
  final String _label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 93,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(16, 26, 38, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _label,
            style: Style.speedometrDisplayTextStyle,
          ),
          const SizedBox(height: 4),
          Text(
            _speed.downloadSpeed.value.getOrCrash().toString(),
            style: Style.speedValueCardStyle,
          ),
          const SizedBox(height: 4),
          Text(
            _speed.downloadSpeed.unit.getOrCrash(),
            style: Style.speedometrDisplayTextStyle,
          ),
        ],
      ),
    );
  }
}
