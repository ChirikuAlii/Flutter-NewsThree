import 'package:flutter/material.dart';
import 'package:news_three/res/app_color.dart';

class MyThemes {

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackTangaroa,
    primaryColor: AppColors.colorPrimary,
    
    textTheme: TextTheme(
      bodyText2: TextStyle(color: AppColors.greyFont)
    ),
    colorScheme: ColorScheme.dark() ,
    iconTheme: IconThemeData(color: AppColors.colorPrimary),
    
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.colorPrimary,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: AppColors.greyZircon)
    ),
    colorScheme: ColorScheme.light() ,
    iconTheme: IconThemeData(color: AppColors.colorPrimary)
  );
}