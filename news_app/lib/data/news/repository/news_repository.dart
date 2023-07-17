import 'package:news_app/client/result/result.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/client/network/base/base_network_type_def.dart';
import 'package:news_app/client/network/base/api_error.dart';
import 'package:news_app/data/news/repository/i_news_repository.dart';
import 'package:news_app/data/news/services/i_news_services.dart';

class NewsRepository extends INewsRepository {
  NewsRepository({required this.iNewsServices});
  final INewsServices iNewsServices;
  @override
  ResultDecode<NewsMainModel, APIError> getEverythingNews({required String? countryName}) async {
    final response = await iNewsServices.getEverythingNews(countryName: countryName);
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }
  
  @override
  ResultDecode<NewsMainModel, APIError> getNewsBySearch({required String? q}) async {
     final response = await iNewsServices.getNewsBySearch(q: q);
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }
}
