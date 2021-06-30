import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SubscibeDialogWidget extends StatelessWidget {
  final String title;
  final String describtion;
  const SubscibeDialogWidget({
    Key key,
    @required this.title,
    @required this.describtion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 72),
      color: const Color.fromRGBO(0, 0, 0, 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            alignment: Alignment.centerLeft,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/images/close.svg",
                ),
              ),
            ),
          ),
          Container(
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color.fromRGBO(30, 30, 30, 0.75),
            ),
            child: Column(
              children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 19,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(84, 84, 88, 0.65),
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Style.dialogTitleStyle,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        describtion,
                        style: Style.dialogMessageStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextButton(
                    onPressed: () {
                      // TODO://
                      Navigator.pop(context);
                    },
                    child: const Text("Subscribe",
                        style: Style.dialogBoldButtonStyle),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
