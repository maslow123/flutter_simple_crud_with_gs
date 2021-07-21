// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/first_page.dart' as _i4;
import '../presentation/home/homepage.dart' as _i6;
import '../presentation/second_page.dart' as _i5;
import '../presentation/sign_in/sign_in.dart' as _i7;
import '../presentation/splash_screen/splash_screen.dart' as _i3;
import '../presentation/user/user_page.dart' as _i8;

class AppRoutes extends _i1.RootStackRouter {
  AppRoutes([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    FirstRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.FirstPage();
        }),
    SecondRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SecondPage();
        }),
    Homepage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomepageArgs>(orElse: () => const HomepageArgs());
          return _i6.Homepage(key: args.key);
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SignInPage();
        }),
    UserRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.UserPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreen.name, path: '/splash-screen'),
        _i1.RouteConfig(FirstRoute.name, path: '/first-page'),
        _i1.RouteConfig(SecondRoute.name, path: '/second-page'),
        _i1.RouteConfig(Homepage.name, path: '/Homepage'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(UserRoute.name, path: '/')
      ];
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/splash-screen');

  static const String name = 'SplashScreen';
}

class FirstRoute extends _i1.PageRouteInfo {
  const FirstRoute() : super(name, path: '/first-page');

  static const String name = 'FirstRoute';
}

class SecondRoute extends _i1.PageRouteInfo {
  const SecondRoute() : super(name, path: '/second-page');

  static const String name = 'SecondRoute';
}

class Homepage extends _i1.PageRouteInfo<HomepageArgs> {
  Homepage({_i2.Key? key})
      : super(name, path: '/Homepage', args: HomepageArgs(key: key));

  static const String name = 'Homepage';
}

class HomepageArgs {
  const HomepageArgs({this.key});

  final _i2.Key? key;
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class UserRoute extends _i1.PageRouteInfo {
  const UserRoute() : super(name, path: '/');

  static const String name = 'UserRoute';
}
