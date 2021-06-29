import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:speed_test/presentation/asserts/style.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(decoration: Style.subscriptionBackgroundDecoration),
          Padding(
            padding: const EdgeInsets.only(top: 68, bottom: 58),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => null,
                        icon: const Icon(Icons.close),
                      ),
                      TextButton(
                        onPressed: () => null,
                        child: Container(
                          height: 32,
                          width: 152,
                          alignment: Alignment.center,
                          child: const Text(
                            "Restore Purchases",
                            style: Style.subscriptionRestoreStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/rocket_new.png",
                  fit: BoxFit.contain,
                ),
                Column(
                  children: [
                    const Text(
                      'Advanced wi-fi analyzer',
                      style: Style.subscriptionSpeedTestStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, bottom: 10),
                      child: SvgPicture.asset("assets/images/line1.svg"),
                    ),
                    const Text(
                      'Test History',
                      style: Style.subscriptionSpeedTestStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, bottom: 10),
                      child: SvgPicture.asset("assets/images/line1.svg"),
                    ),
                    const Text(
                      'Unlimited tests',
                      style: Style.subscriptionSpeedTestStyle,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Free unlimited access",
                      textAlign: TextAlign.center,
                      style: Style.subscriptionFreeUnlimiteStyle,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56),
                      child: TextButton(
                        child: Container(
                          height: 56,
                          decoration: Style.subscribtionButtonDecoration,
                          alignment: Alignment.center,
                          child: const Text(
                            'SUBSCRIBE',
                            style: Style.continueSubscribtionButtonStyle,
                          ),
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    const SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => null,
                              child: const Text(
                                "Privacy Policy",
                                style: Style.subscriptionPrivacyStyle,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.0),
                          child: Text("|"),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () => null,
                              child: const Text(
                                "Terms of Use",
                                style: Style.subscriptionPrivacyStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
