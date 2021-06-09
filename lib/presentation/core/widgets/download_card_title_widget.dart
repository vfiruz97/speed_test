import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class DownloadCardTitleWidget extends StatelessWidget {
  const DownloadCardTitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text('DOWNLOAD', style: Style.cardTitleStyle),
        const SizedBox(width: 12),
        const Icon(
          Icons.arrow_downward,
          color: Color.fromRGBO(74, 89, 103, 1),
        )
      ],
    );
  }
}
