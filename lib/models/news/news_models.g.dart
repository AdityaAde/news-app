// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModels _$$_NewsModelsFromJson(Map<String, dynamic> json) =>
    _$_NewsModels(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$_NewsModelsToJson(_$_NewsModels instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
    };
