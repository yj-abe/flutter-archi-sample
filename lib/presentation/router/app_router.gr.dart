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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/book/books_page.dart' as _i1;
import '../ui/preference/preference_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BooksRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BooksPage());
    },
    PreferenceRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PreferencePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(BooksRoute.name, path: '/'),
        _i3.RouteConfig(PreferenceRoute.name, path: '/preference-page')
      ];
}

/// generated route for
/// [_i1.BooksPage]
class BooksRoute extends _i3.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '/');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i2.PreferencePage]
class PreferenceRoute extends _i3.PageRouteInfo<void> {
  const PreferenceRoute()
      : super(PreferenceRoute.name, path: '/preference-page');

  static const String name = 'PreferenceRoute';
}
