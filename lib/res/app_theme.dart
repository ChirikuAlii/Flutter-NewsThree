import 'package:flutter/material.dart';
import 'package:news_three/res/app_color.dart';

class MyThemes {

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackTangaroa,
    primaryColor: AppColors.colorPrimary,
    
    textTheme: TextTheme(
      headlineSmall: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: AppColors.greyFont),
      bodyMedium: TextStyle(color: AppColors.greyFont),
    ),
    colorScheme: ColorScheme.dark() ,
    iconTheme: IconThemeData(color: AppColors.colorPrimary),
    
    
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.colorPrimary,
    textTheme: TextTheme(
      headlineSmall: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: AppColors.greyFontLight),
      bodyMedium: TextStyle(color: AppColors.greyFontLight),
    ),

  
    colorScheme: ColorScheme.light() ,
    iconTheme: IconThemeData(color: AppColors.colorPrimary)
  );
  
}

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool isDarkMode() {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}