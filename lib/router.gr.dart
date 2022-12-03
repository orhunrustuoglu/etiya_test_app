// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'models/user.dart' as _i6;
import 'ui/screens/main_screen.dart' as _i2;
import 'ui/screens/splash_screen.dart' as _i1;
import 'ui/screens/user_details_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    UserDetailsScreen.name: (routeData) {
      final args = routeData.argsAs<UserDetailsScreenArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.UserDetailsScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i4.RouteConfig(
          MainScreen.name,
          path: '/main-screen',
        ),
        _i4.RouteConfig(
          UserDetailsScreen.name,
          path: '/user-details-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i4.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreen extends _i4.PageRouteInfo<void> {
  const MainScreen()
      : super(
          MainScreen.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i3.UserDetailsScreen]
class UserDetailsScreen extends _i4.PageRouteInfo<UserDetailsScreenArgs> {
  UserDetailsScreen({
    _i5.Key? key,
    required _i6.User user,
  }) : super(
          UserDetailsScreen.name,
          path: '/user-details-screen',
          args: UserDetailsScreenArgs(
            key: key,
            user: user,
          ),
        );

  static const String name = 'UserDetailsScreen';
}

class UserDetailsScreenArgs {
  const UserDetailsScreenArgs({
    this.key,
    required this.user,
  });

  final _i5.Key? key;

  final _i6.User user;

  @override
  String toString() {
    return 'UserDetailsScreenArgs{key: $key, user: $user}';
  }
}
