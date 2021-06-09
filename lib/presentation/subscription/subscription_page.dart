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
            padding: const EdgeInsets.only(top: 60, bottom: 50),
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
                        icon: const Icon(
                          Icons.close,
                          size: 26,
                          color: Color.fromRGBO(196, 196, 196, 1),
                        ),
                      ),
                      TextButton(
                        onPressed: () => null,
                        child: Row(
                          children: const [
                            Icon(Icons.refresh, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              "Restore purchases",
                              style: Style.subscriptionRestoreStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(child: Image.asset("assets/images/rocket.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "Speed test MASTER",
                          textAlign: TextAlign.start,
                          style: Style.subscriptionSpeedTestStyle,
                        ),
                      ),
                      SubscripListItemWidget(
                        icon: Icons.check_circle_outline,
                        title: "More accurte",
                      ),
                      SizedBox(height: 16),
                      SubscripListItemWidget(
                        icon: Icons.check_circle_outline,
                        title: "Unlimited test",
                      ),
                      SizedBox(height: 16),
                      SubscripListItemWidget(
                        icon: Icons.check_circle_outline,
                        title: "Advanced ping",
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
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextButton(
                        child: Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: Style.restartButtonDecoration,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(),
                              Text('Continue', style: Style.restartButtonStyle),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    const SizedBox(height: 38),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => null,
                          child: const Text(
                            "Privacy Policy",
                            style: Style.subscriptionPrivacyStyle,
                          ),
                        ),
                        const Text("|", style: Style.subscriptionPrivacyStyle),
                        TextButton(
                          onPressed: () => null,
                          child: const Text(
                            "Terms of Use",
                            style: Style.subscriptionPrivacyStyle,
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
