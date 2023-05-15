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

import '../../pages/news_detail/news_detail_page.dart' as _i2;
import '../../pages/pages.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NewsDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<NewsDetailRouteArgs>(
          orElse: () => NewsDetailRouteArgs(
                title: pathParams.getString('title'),
                urlImage: queryParams.optString('utlImage'),
                description: queryParams.optString('description'),
                author: queryParams.optString('author'),
              ));
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.NewsDetailPage(
          key: args.key,
          title: args.title,
          urlImage: args.urlImage,
          description: args.description,
          author: args.author,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'home',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        _i3.RouteConfig(
          NewsDetailRoute.name,
          path: 'detail-page/:title',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.NewsDetailPage]
class NewsDetailRoute extends _i3.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    _i4.Key? key,
    required String title,
    String? urlImage,
    String? description,
    String? author,
  }) : super(
          NewsDetailRoute.name,
          path: 'detail-page/:title',
          args: NewsDetailRouteArgs(
            key: key,
            title: title,
            urlImage: urlImage,
            description: description,
            author: author,
          ),
          rawPathParams: {'title': title},
          rawQueryParams: {
            'utlImage': urlImage,
            'description': description,
            'author': author,
          },
        );

  static const String name = 'NewsDetailRoute';
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({
    this.key,
    required this.title,
    this.urlImage,
    this.description,
    this.author,
  });

  final _i4.Key? key;

  final String title;

  final String? urlImage;

  final String? description;

  final String? author;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, title: $title, urlImage: $urlImage, description: $description, author: $author}';
  }
}
