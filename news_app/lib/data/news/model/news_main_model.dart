import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/client/network/base/base_response_model.dart';
import 'package:news_app/data/news/model/news_category_model.dart';

part 'news_main_model.freezed.dart';
part 'news_main_model.g.dart';

@freezed
class NewsMainModel extends BaseResponseModel<NewsMainModel>
    with _$NewsMainModel {
  factory NewsMainModel({
    String? status,
    int? totalResults,
    List<NewsCategoryModel>? articles,
  }) = _NewsMainModel;

  factory NewsMainModel.fromJson(Map<String, dynamic> json) =>
      _$NewsMainModelFromJson(json);

  NewsMainModel._();

  @override
  NewsMainModel fromJson(Map<String, dynamic> json) =>
      NewsMainModel.fromJson(json);
}
