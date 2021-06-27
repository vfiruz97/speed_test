import 'package:flutter/material.dart';

import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/subscription/subscrip_list_item_widget.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(decoration: Style.subscriptionBackgroundDecoration),
          Padding(
            padding: const EdgeInsets.only(top: 83, bottom: 52),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          decoration: Style.restartButtonDecoration,
                          child: const Text(
                            "Restore Purchases",
                            style: Style.subscriptionRestoreStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.asset("assets/images/wifi.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 48),
                        child: Text(
                          'Speed Test\nWifi & Internet',
                          textAlign: TextAlign.start,
                          style: Style.subscriptionSpeedTestStyle,
                        ),
                      ),
                      SubscripListItemWidget(
                        icon: Image.asset("assets/images/vector.png"),
                        title: "Advanced wi-fi analyzing",
                      ),
                      const SizedBox(height: 16),
                      SubscripListItemWidget(
                        icon: Image.asset("assets/images/vector.png"),
                        title: "Unlimited tests every day",
                      ),
                      const SizedBox(height: 16),
                      SubscripListItemWidget(
                        icon: Image.asset("assets/images/vector.png"),
                        title: "Test History Access",
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Free unlimited access",
                        textAlign: TextAlign.center,
                        style: Style.subscriptionFreeUnlimiteStyle,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextButton(
                        child: Container(
                          height: 64,
                          decoration:
                              Style.continueSubscribtionButtonDecoration,
                          alignment: Alignment.center,
                          child: const Text(
                            'Continue',
                            style: Style.continueSubscribtionButtonStyle,
                          ),
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () => null,
                              child: const Text(
                                "Privacy Policy",
                                style: Style.subscriptionPrivacyStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () => null,
                              child: const Text(
                                "Terms of Use",
                                style: Style.subscriptionPrivacyStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
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
