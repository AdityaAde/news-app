import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/models/models.dart';

import '../component/component.dart';
import '../data/remote/remote.dart';

class NewsRepository {
  final NewsService _newsService;

  NewsRepository(this._newsService);

  factory NewsRepository.create() => NewsRepository(getIt.get());

  Future<Either<Exception, List<NewsModels>>> getNewsByCategory(
    String category,
  ) async {
    try {
      final result = await _newsService.getNewsByCategory(category);
      return Right(result);
    } on DioError catch (dioError) {
      switch (dioError.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.sendTimeout:
          return Left(Exception('No Connection'));
        case DioErrorType.response:
          return Left(Exception('Data Parsing err'));
        default:
          return Left(Exception());
      }
    } catch (e) {
      return Left(Exception());
    }
  }
}
