
import 'package:flutter/material.dart';

import 'Config.dart';
import 'Styles.dart';
import 'screen/auth/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //AppBar
        primarySwatch: MaterialColor(Config.primaryColor.value, {
          50:Config.primaryColor.withOpacity(.1),
          100:Config.primaryColor.withOpacity(.2),
          200:Config.primaryColor.withOpacity(.3),
          300:Config.primaryColor.withOpacity(.4),
          400:Config.primaryColor.withOpacity(.5),
          500:Config.primaryColor.withOpacity(.6),
          600:Config.primaryColor.withOpacity(.7),
          700:Config.primaryColor.withOpacity(.8),
          800:Config.primaryColor.withOpacity(.9),
          900:Config.primaryColor.withOpacity(1),
        }),
        primaryColorLight: MaterialColor(Config.primaryLightColor.value, {
          50:Config.primaryLightColor.withOpacity(.1),
          100:Config.primaryLightColor.withOpacity(.2),
          200:Config.primaryLightColor.withOpacity(.3),
          300:Config.primaryLightColor.withOpacity(.4),
          400:Config.primaryLightColor.withOpacity(.5),
          500:Config.primaryLightColor.withOpacity(.6),
          600:Config.primaryLightColor.withOpacity(.7),
          700:Config.primaryLightColor.withOpacity(.8),
          800:Config.primaryLightColor.withOpacity(.9),
          900:Config.primaryLightColor.withOpacity(1),
        }),

        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Config.textTitleColor, size: Config.iconSize,
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
          titleTextStyle: Styles.titleStyle,
          backgroundColor: Config.primaryColor2,
        ),

        iconTheme: IconThemeData(
          color: Config.textTitleColor, size: Config.iconSize,
        ),

        dividerTheme: DividerThemeData(
          color: Config.infoColor, thickness: 1,
        ),
        // fontFamily: 'Geometria',
        splashColor: Config.splashColor,
        shadowColor: Config.shadowColor,
        primaryColor: Config.primaryColor,
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Config.activityBackColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme),
      ),
      home: const SplashScreen(),
    );
  }
}
