import 'package:flutter/material.dart';

class Style {
  static const appBarTitleStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.41,
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

  static const cancelButtonStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.41,
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
}
