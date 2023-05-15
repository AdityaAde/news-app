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

import '../../pages/base/base_page.dart' as _i1;
import '../../pages/category_news/category_news_page.dart' as _i3;
import '../../pages/pages.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    CategoryNewsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryNewsPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'base',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          BaseRoute.name,
          path: 'base',
          children: [
            _i4.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BaseRoute.name,
            ),
            _i4.RouteConfig(
              CategoryNewsRoute.name,
              path: 'category-news',
              parent: BaseRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i4.PageRouteInfo<void> {
  const BaseRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          path: 'base',
          initialChildren: children,
        );

  static const String name = 'BaseRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.CategoryNewsPage]
class CategoryNewsRoute extends _i4.PageRouteInfo<void> {
  const CategoryNewsRoute()
      : super(
          CategoryNewsRoute.name,
          path: 'category-news',
        );

  static const String name = 'CategoryNewsRoute';
}
