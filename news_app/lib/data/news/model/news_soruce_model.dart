
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_soruce_model.freezed.dart';
part 'news_soruce_model.g.dart';

@freezed
class NewsSoruceModel with _$NewsSoruceModel {
  factory NewsSoruceModel() = _NewsSoruceModel;
	
  factory NewsSoruceModel.fromJson(Map<String, dynamic> json) =>
			_$NewsSoruceModelFromJson(json);
}
