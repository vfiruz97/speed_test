import 'dart:ui';

import 'package:flutter/material.dart';

class Style {
  const Style();

  static const appBarTitleStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.41,
    color: Colors.white,
  );

  static const titleBarTitleStyle = TextStyle(
    fontFamily: 'BebasNeue',
    fontWeight: FontWeight.w400,
    fontSize: 26,
    letterSpacing: 0.37,
    color: Colors.white,
  );

  static const startButtonStyle = TextStyle(
    fontFamily: 'BebasNeue',
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: Colors.white,
    letterSpacing: 0.37,
  );

  static final startButtonDecoration = BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.black,
    border: Border.all(
      color: const Color.fromRGBO(79, 176, 167, 1),
      width: 15,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(79, 176, 167, 0.8),
        blurRadius: 70,
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 10,
      ),
    ],
  );

  static const bottomNavigationBarDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(color: Colors.white),
    ],
  );

  static const cancelButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Colors.white,
  );

  static const textFirstHeader = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.26,
  );

  static final restartButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: const Color.fromRGBO(79, 176, 167, 1)),
  );

  static final continueSubscribtionButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      colors: [
        Color.fromRGBO(124, 195, 189, 1),
        Color.fromRGBO(79, 124, 176, 1)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  static const restartButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0.43,
  );

  static const continueSubscribtionButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0.43,
  );

  static const cardTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.23,
    color: Color.fromRGBO(111, 113, 125, 1),
  );

  static const cardSpeedStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 0.37,
  );

  static const cardSpeedMeasurementStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.23,
    color: Color.fromRGBO(111, 113, 125, 1),
  );

  static const speedometrDisplayTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 30,
    color: Color.fromRGBO(79, 176, 167, 1),
  );

  static const dialogBoxDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(84, 84, 88, 0.65),
        width: 0.5,
      ),
    ),
  );

  static const dialogTitleStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.43,
  );

  static const dialogMessageStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.08,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const dialogButtonStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.41,
    color: Color.fromRGBO(10, 132, 255, 1),
  );

  static const informationHeaderStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.26,
    color: Colors.white,
  );

  static const dialogBoldButtonStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.41,
    color: Color.fromRGBO(10, 132, 255, 1),
  );

  static const dialogSrightWallDecoration = BoxDecoration(
    border: Border(
      left: BorderSide(
        color: Color.fromRGBO(84, 84, 88, 0.65),
        width: 0.5,
      ),
    ),
  );

  static const historyCardHeaderStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 13,
    letterSpacing: 0.08,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const historyCardHeaderValueStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    letterSpacing: 0.43,
  );

  static const historyCardFooterStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 13,
    wordSpacing: 0.08,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const historyShowNameStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(111, 113, 125, 1),
  );

  static const historyShowValueStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    letterSpacing: 0.43,
  );

  static const subscriptionBackgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg.png"),
      fit: BoxFit.cover,
    ),
  );

  static const subscriptionRestoreStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.08,
    color: Colors.white,
  );

  static const subscriptionSpeedTestStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.26,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionListItemStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionFreeUnlimiteStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.23,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionPrivacyStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 20,
    letterSpacing: 0.23,
    color: Color.fromRGBO(111, 113, 125, 1),
  );

  static const bottomNavSelectedLabelStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.08,
  );
}
