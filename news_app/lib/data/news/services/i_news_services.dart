import 'package:news_app/client/network/base/base_network_error_type.dart';
import 'package:news_app/client/network/base/base_network_type_def.dart';
import 'package:news_app/data/news/model/news_main_model.dart';

abstract class INewsServices {
  ResultDecode<NewsMainModel, BaseNetworkErrorType> getEverythingNews(
      {required String? countryName});
  ResultDecode<NewsMainModel, BaseNetworkErrorType> getNewsBySearch(
      {required String? q});
}
