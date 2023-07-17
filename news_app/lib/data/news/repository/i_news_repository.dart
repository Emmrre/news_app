import 'package:news_app/client/network/base/api_error.dart';
import 'package:news_app/client/network/base/base_network_type_def.dart';
import 'package:news_app/data/news/model/news_main_model.dart';

abstract class INewsRepository {
  ResultDecode<NewsMainModel, APIError> getEverythingNews(
      {required String? countryName});

  ResultDecode<NewsMainModel, APIError> getNewsBySearch({required String? q});
}
