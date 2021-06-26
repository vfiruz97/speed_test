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
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 0.37,
    color: Colors.white,
  );

  static const startButtonStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontSize: 34,
    color: Colors.white,
    letterSpacing: 0.4,
  );

  static const startButtonDecoration = BoxDecoration(
    shape: BoxShape.circle,
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(79, 176, 167, 1),
        Color.fromRGBO(162, 109, 217, 1)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    boxShadow: [
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

  static const titleBarDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(84, 84, 88, 0.65),
        width: 0.5,
      ),
    ),
    color: Colors.black,
  );

  static const cancelButtonStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Colors.white,
  );

  static const textFirstHeader = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.26,
  );

  static final restartButtonDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color.fromRGBO(79, 176, 167, 1),
        Color.fromRGBO(162, 109, 217, 1)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(79, 176, 167, 0.7),
        blurRadius: 15,
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 10,
      ),
    ],
    borderRadius: BorderRadius.circular(10),
  );

  static const restartButtonStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0.41,
  );

  static const cardTitleStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.23,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const cardSpeedStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 0.37,
  );

  static const cardSpeedMeasurementStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.23,
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
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(0, 122, 255, 1),
  );

  static const dialogBoldButtonStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(0, 122, 255, 1),
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
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 13,
    letterSpacing: 0.08,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const historyCardBodyStyle = TextStyle(
    fontFamily: "SF Pro Text",
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

  static final eigthBorderRadiusDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color.fromRGBO(18, 20, 32, 1),
  );

  static const historyShowCardBorderSideDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(74, 89, 103, 1),
        width: 0.5,
      ),
    ),
  );

  static const historyShowNameStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const historyShowValueStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    letterSpacing: 0.43,
  );

  static const subscriptionBackgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/background.png"),
      fit: BoxFit.cover,
    ),
  );

  static const subscriptionRestoreStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.41,
    color: Colors.white,
  );

  static const subscriptionSpeedTestStyle = TextStyle(
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w600,
    fontSize: 28,
    letterSpacing: 0.43,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionListItemStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w500,
    fontSize: 17,
    letterSpacing: 0.43,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionFreeUnlimiteStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.41,
    color: Color.fromRGBO(250, 250, 250, 1),
  );

  static const subscriptionPrivacyStyle = TextStyle(
    fontFamily: "SF Pro Text",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.41,
    color: Color.fromRGBO(74, 89, 103, 1),
  );

  static const bottomNavSelectedLabelStyle = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.08,
  );
}
