import 'package:flutter/material.dart';
import 'package:news_three/res/app_color.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackTangaroa,
    primaryColor: AppColors.colorPrimary,
          backgroundColor: AppColors.greyMidnightExpress,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: AppColors.greyFont),
      bodyMedium: TextStyle(color: AppColors.greyFont),
      titleMedium: TextStyle(
        height: 1.3,
        wordSpacing: 1.5
      )
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.colorPrimary,
      selectionColor: AppColors.colorPrimary,
      selectionHandleColor: AppColors.colorPrimary
    ),
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: AppColors.colorPrimary),
  );

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: AppColors.colorPrimary,
      backgroundColor: AppColors.greySolitude,
      textTheme: const TextTheme(
        headlineSmall: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: AppColors.greyFontLight),
        bodyMedium: TextStyle(color: AppColors.greyFontLight),
        titleMedium: TextStyle(
          height: 1.3,
          wordSpacing: 1.5
        )
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.colorPrimary,
        selectionColor: AppColors.colorPrimary,
        selectionHandleColor: AppColors.colorPrimary
      ),
      colorScheme: const ColorScheme.light(),
      iconTheme: const IconThemeData(color: AppColors.colorPrimary));


}


extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool isDarkMode() {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
class CategoryArticleTheme{
  BuildContext context;
  CategoryArticleTheme (this.context);

  Color selectedBackground(){
      return context.isDarkMode() ? Colors.white : AppColors.blackTangaroa;
  }

  Color selectedText(){
      return context.isDarkMode() ? AppColors.blackTangaroa : Colors.white;
  }
}

