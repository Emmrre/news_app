
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/news/model/news_soruce_model.dart';

part 'news_category_model.freezed.dart';
part 'news_category_model.g.dart';

@freezed
class NewsCategoryModel with _$NewsCategoryModel {
  factory NewsCategoryModel({
    NewsSoruceModel? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,


  }) = _NewsCategoryModel;
	
  factory NewsCategoryModel.fromJson(Map<String, dynamic> json) =>
			_$NewsCategoryModelFromJson(json);
}
