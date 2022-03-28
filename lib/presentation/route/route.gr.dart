// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../page/home_page.dart' as _i2;
import '../page/intro_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    IntroPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.IntroPage());
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.MyHomePage(key: args.key, title: args.title));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(IntroPageRoute.name, path: '/'),
        _i3.RouteConfig(MyHomePageRoute.name, path: '/my-home-page')
      ];
}

/// generated route for
/// [_i1.IntroPage]
class IntroPageRoute extends _i3.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomePageRoute extends _i3.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i4.Key? key, required String title})
      : super(MyHomePageRoute.name,
            path: '/my-home-page',
            args: MyHomePageRouteArgs(key: key, title: title));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key, required this.title});

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, title: $title}';
  }
}
