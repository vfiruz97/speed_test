import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class RateDialogWidget extends StatelessWidget {
  final String title;
  final String message;

  const RateDialogWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(30, 30, 30, 0.75),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 270,
              decoration: Style.dialogBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 19,
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Text(title, style: Style.dialogTitleStyle),
                    const SizedBox(width: 2),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: Style.dialogMessageStyle,
                    ),
                  ],
                ),
              ),
            ),
            const RateStarButtonsWidget()
          ],
        ),
      ),
    );
  }
}

class RateStarButtonsWidget extends StatefulWidget {
  const RateStarButtonsWidget({
    Key key,
  }) : super(key: key);

  @override
  _RateStarButtonsWidgetState createState() => _RateStarButtonsWidgetState();
}

class _RateStarButtonsWidgetState extends State<RateStarButtonsWidget> {
  int starRate = 1;

  @override
  void initState() {
    starRate = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 270,
          decoration: Style.dialogBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() {
                      starRate = 1;
                    }),
                    child: Icon(
                      starRate >= 1 ? Icons.star : Icons.star_border_outlined,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 24,
                height: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() {
                      starRate = 2;
                    }),
                    child: Icon(
                      starRate >= 2 ? Icons.star : Icons.star_border_outlined,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 24,
                height: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() {
                      starRate = 3;
                    }),
                    child: Icon(
                      starRate >= 3 ? Icons.star : Icons.star_border_outlined,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 24,
                height: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() {
                      starRate = 4;
                    }),
                    child: Icon(
                      starRate >= 4 ? Icons.star : Icons.star_border_outlined,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 24,
                height: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() {
                      starRate = 5;
                    }),
                    child: Icon(
                      starRate >= 5 ? Icons.star : Icons.star_border_outlined,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel", style: Style.dialogButtonStyle),
              ),
            ),
            Container(
              height: 43.5,
              decoration: Style.dialogSrightWallDecoration,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  // TODO:// Send rate print(starRate);
                  Navigator.pop(context);
                },
                child: const Text("Submit", style: Style.dialogBoldButtonStyle),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
