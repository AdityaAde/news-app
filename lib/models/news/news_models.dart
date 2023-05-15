import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_models.freezed.dart';
part 'news_models.g.dart';

@freezed
class NewsModels with _$NewsModels {
  const factory NewsModels({
    String? news,
  }) = _NewsModels;

  factory NewsModels.fromJson(Map<String, dynamic> json) =>
      _$NewsModelsFromJson(json);

  static List<String> categoryList = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology',
  ];
}
