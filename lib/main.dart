import 'package:flutter/material.dart';
import 'package:news_three/presentation/page/intro_page.dart';
import 'package:news_three/res/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.colorPrimary),
      home: const IntroPage(),
    );
  }
}
