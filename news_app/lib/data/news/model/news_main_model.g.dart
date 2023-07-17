// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsMainModel _$$_NewsMainModelFromJson(Map<String, dynamic> json) =>
    _$_NewsMainModel(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => NewsCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsMainModelToJson(_$_NewsMainModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
