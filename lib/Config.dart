
import 'dart:convert';

import 'package:flutter/material.dart';

class Config{
  //MAIN STYLE
  static const Color primaryColor = Color.fromRGBO(215, 178, 126, 1.0),
      primaryColor2 = Color(0xffD6C69E),
      primaryDarkColor = Color.fromRGBO(172, 142, 101, 1.0),
      primaryLightColor = Color.fromRGBO(235, 217, 191, 1.0),

      secondaryButtonColor = Color.fromRGBO(204, 204, 204, 1.0);

  static Color shadowColor = Colors.black,
      shadowNavColor = Colors.black.withOpacity(0.15),
      shadowCardColor = Colors.black.withOpacity(0.25),

      splashColor = primaryLightColor,
      splashOverlayColor = primaryLightColor.withOpacity(0.5),

      errorColor = Colors.red.shade400,
      warningColor = Colors.red.shade300,
      progressColor = Colors.blue.shade800,
      successColor = Colors.green.shade600,
      progressHintColor = Colors.green.shade800;

  static int animDuration = 250,
      progressDuration = 500,
      notificationDuration = 2000;

  //GLOBAL COMPONENTS
  //TEXT
  static Color textColorOnPrimary = Colors.white;
  static const Color textColor = Color.fromRGBO(128, 128, 128, 1.0),
      textBlackColor = Colors.black,
      textDarkColor = Color.fromRGBO(112, 106, 91, 1.0),
      textDarkerColor = Color.fromRGBO(0, 0, 1, 1.0),
      textTitleColor = Color.fromRGBO(89, 89, 89, 1.0);
  static double textLargeSize = 20, textMediumSize = 16, textSmallSize = 14, veryBigSize = 22;

  //ACTIVITY
  //static const Color activityBackColor = Color.fromRGBO(224, 217, 203, 1.0);
  static const Color activityBackColor = Color.fromRGBO(244, 245, 240, 1.0);
  static double activityBorderRadius = 25, smallBorderRadius = 12, padding = 16;
  static const Color activityHintColor = Color.fromRGBO(230, 230, 230, 1.0);
  static const Color appointmentColor = Color.fromRGBO(136, 136, 136, 1.0);

  //COMPONENTS
  static double cursorWidth = 3, iconSize = 30, avatarSize = 100;

  //ACTIVITY BAR
  static Color activityBottomBarItemActiveColor = Colors.red;
  static Color activityBottomBarItemUnActiveColor = Colors.blue.shade900;

  //OTHER
  static Color baseInfoColor = const Color.fromRGBO(204, 204, 204, 0.2),
      infoColor =const Color.fromRGBO(248, 245, 237, 1.0),
      waitingColor = Colors.yellow.shade600,
      borderColor = const Color(0xffE1DFD8),
      baseWarningInfoColor = Colors.red.shade100;
  static String groupSeparator = ascii.decode([29]), currency = '₽';
  static RegExp findTrailingZeros = RegExp(r'([.]*0)(?!.*\d)');

  //API ADDRESS
  static String prefix = r'kzn\mirspa\';

  //DATETIME
  static Duration duration = const Duration(hours: 1);

  //TIMEOUT
  static int sendTimeout = 35000;
  static int receiveTimeout = 25000;

  //PHONE STORAGE
  /// filename for save image
  static String filePath = '';

}
