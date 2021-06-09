import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class UploadCardTitleWidget extends StatelessWidget {
  const UploadCardTitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text('UPLOAD', style: Style.cardTitleStyle),
        const SizedBox(width: 12),
        const Icon(
          Icons.arrow_upward,
          color: Color.fromRGBO(74, 89, 103, 1),
        )
      ],
    );
  }
}
