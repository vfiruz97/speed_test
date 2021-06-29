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

  static const startButtonDecoration = BoxDecoration(
    shape: BoxShape.circle,
    gradient: RadialGradient(
      colors: [
        Color.fromRGBO(26, 172, 93, 1),
        Color.fromRGBO(7, 230, 151, 1),
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(26, 172, 93, 1),
        blurRadius: 25,
        spreadRadius: 10,
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
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final restartButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: const Color.fromRGBO(79, 176, 167, 1)),
  );

  static final subscribtionButtonDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(78, 57, 141, 1),
          Color.fromRGBO(162, 109, 217, 1),
          Color.fromRGBO(157, 106, 212, 1),
          Color.fromRGBO(78, 57, 141, 1),
        ],
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(174, 73, 221, 0.52),
          blurRadius: 10,
        ),
      ]);

  static const restartButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0.43,
  );

  static const continueSubscribtionButtonStyle = TextStyle(
    fontFamily: 'BebasNeue',
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: Colors.white,
    letterSpacing: 0.59,
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
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w200,
    fontSize: 14,
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
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: Color.fromRGBO(170, 170, 170, 1),
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
    fontFamily: "Rubik",
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 16,
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
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Color.fromRGBO(170, 170, 170, 1),
  );

  static const historyShowValueStyle = TextStyle(
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 16,
  );

  static const subscriptionBackgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg_new.png"),
      fit: BoxFit.cover,
    ),
  );

  static const subscriptionRestoreStyle = TextStyle(
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.41,
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
    fontFamily: "Rubik",
    fontWeight: FontWeight.w700,
    fontSize: 14,
    letterSpacing: 0.46,
    color: Color.fromRGBO(111, 227, 19, 1),
  );

  static const subscriptionPrivacyStyle = TextStyle(
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.41,
    color: Colors.white,
  );

  static const bottomNavSelectedLabelStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.08,
  );

  static const speedValueCardStyle = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static const labelCardStyle = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const historyTitleColumnStyle = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static const historyTitleRowDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(41, 59, 82, 1),
      ),
    ),
  );

  static const speedHistoryTableStyle = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static const dateTimeHistoryShowStyle = TextStyle(
    fontFamily: "Rubik",
    fontWeight: FontWeight.w500,
    fontSize: 22,
  );
}
