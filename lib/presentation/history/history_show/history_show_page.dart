import 'package:flutter/material.dart';

import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/history/history_show/widgets/info_label_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_card_widget.dart';

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
  @override
  Widget build(BuildContext context) {
    if (widget.speed != null) {
      final Speed _speed = widget.speed;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HistoryCardWidget(
            speed: _speed,
            backgroundColor: Colors.black,
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text("Information", style: Style.informationHeaderStyle),
          ),
          Column(
            children: [
              InfoLabelWidget(
                icon: Icons.wifi,
                name: "Wi-Fi Name",
                value: _speed.wifiInfo.wifiName.getOrCrash(),
              ),
              InfoLabelWidget(
                icon: Icons.room,
                name: "IP Address",
                value: _speed.wifiInfo.ipAddress.getOrCrash(),
                backgroundColor: const Color.fromRGBO(18, 20, 32, 1),
              ),
              InfoLabelWidget(
                icon: Icons.computer,
                name: "Server",
                value: _speed.wifiInfo.serverName.getOrCrash(),
              ),
              InfoLabelWidget(
                icon: Icons.phone_iphone,
                name: "Device",
                value: _speed.deviceName.getOrCrash(),
                backgroundColor: const Color.fromRGBO(18, 20, 32, 1),
              ),
            ],
          ),
        ],
      );
    }
    return Container();
  }
}
