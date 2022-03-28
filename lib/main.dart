import 'package:flutter/material.dart';
import 'package:news_three/presentation/page/intro_page.dart';
import 'package:news_three/res/app_color.dart';
import 'package:news_three/res/app_theme.dart';

import 'presentation/route/route.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'News 3',
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      
    );
  }
}
