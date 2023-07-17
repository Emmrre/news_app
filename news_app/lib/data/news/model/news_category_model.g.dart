// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsCategoryModel _$$_NewsCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_NewsCategoryModel(
      source: json['source'] == null
          ? null
          : NewsSoruceModel.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_NewsCategoryModelToJson(
        _$_NewsCategoryModel instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
