import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:news_app/component/keys.dart';

import '../../component/component.dart';
import '../../models/models.dart';
import 'base_service.dart';

class NewsService extends Endpoint {
  final BaseService _baseService;

  NewsService(this._baseService);

  factory NewsService.create() => NewsService(getIt.get());

  static List<NewsModels> _decodeJson(String response) {
    final items = <NewsModels>[];
    final Map<String, dynamic> data = jsonDecode(response);
    final List<dynamic> result = data['articles'];
    for (final item in result) {
      final news = NewsModels.fromJson(item);
      items.add(news);
    }
    return items;
  }

  Future<List<NewsModels>> getNewsByCategory(String category) async {
    final url = endpointBaseUrlWithVersion(path: 'top-headlines');
    final queryParameters = {
      Keys.category: category,
      Keys.country: 'us',
      Keys.apiKey: Keys.credential,
    };
    final response = await _baseService.dio.get(
      url,
      queryParameters: queryParameters,
    );
    final String data = response.data;
    final result = await compute(_decodeJson, data);
    return result;
  }

  Future<List<NewsModels>> getNewsEverything(
    String? search,
    String? from,
  ) async {
    final url = endpointBaseUrlWithVersion(path: 'everything');
    final queryParameters = {
      Keys.search: search ?? 'news',
      Keys.from: from,
      Keys.apiKey: Keys.credential,
    };
    final response = await _baseService.dio.get(
      url,
      queryParameters: queryParameters,
    );
    final String data = response.data;
    final result = await compute(_decodeJson, data);
    return result;
  }
}
