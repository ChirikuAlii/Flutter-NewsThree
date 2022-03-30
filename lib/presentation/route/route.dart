
import 'package:auto_route/annotations.dart';
import 'package:news_three/presentation/page/home/home_page.dart';
import 'package:news_three/presentation/page/intro_page.dart';

@MaterialAutoRouter(
  routes :<AutoRoute> [
    AutoRoute(
      page: IntroPage,
      initial: true
    ),

    AutoRoute(
      page: MyHomePage
    )
  ]
)
class $AppRouter {}