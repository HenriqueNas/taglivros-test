import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppConfig {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: AppColors.pink,
    errorColor: AppColors.danger,
    dividerColor: Colors.transparent,
    accentColor: AppColors.pink,
    scaffoldBackgroundColor: AppColors.white,
    backgroundColor: AppColors.white,
    colorScheme: ColorScheme(
      primary: AppColors.pink,
      primaryVariant: AppColors.pink,
      secondary: AppColors.black,
      secondaryVariant: AppColors.black,
      surface: AppColors.white,
      background: AppColors.white,
      error: AppColors.danger,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.black,
      onBackground: AppColors.black,
      onError: AppColors.white,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.black,
        fontSize: 32,
        fontFamily: 'Lora',
      ),
      headline2: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 16,
        color: AppColors.darkGrey,
      ),
      bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        fontFamily: 'Lora',
      ),
      headline4: TextStyle(
        fontSize: 18,
        color: AppColors.darkGrey,
      ),
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static const systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: AppColors.white,
    systemNavigationBarDividerColor: AppColors.white,
    systemNavigationBarColor: AppColors.white,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const deviceOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const systemUiOverlayStyleDarkBlueNav = SystemUiOverlayStyle(
    statusBarColor: AppColors.white,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.white,
    systemNavigationBarDividerColor: AppColors.pink,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static void updateSystemUi(SystemUiOverlayStyle uiOverlayStyle) {
    Future.delayed(Duration(milliseconds: 1)).then(
      (_) => SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle),
    );
  }
}
