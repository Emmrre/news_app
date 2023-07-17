import 'package:news_app/client/client.dart';
import 'package:news_app/client/network/enum/request_method_enum.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/client/network/base/base_network_type_def.dart';
import 'package:news_app/client/network/base/base_network_error_type.dart';
import 'package:news_app/data/news/services/i_news_services.dart';

class NewsServices extends INewsServices {
  @override
  ResultDecode<NewsMainModel, BaseNetworkErrorType> getEverythingNews(
      {required String? countryName}) async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: '/top-headlines')
        .setQueryParameters(queryParameters: {
          'country': countryName,
          'apiKey': 'b0afa8fa755f4ab5b9ed401b49287360'
        })
        .setFunctionName(functionName: 'getEverythingNews')
        .execute<NewsMainModel, NewsMainModel>(NewsMainModel());
    return response;
  }

  @override
  ResultDecode<NewsMainModel, BaseNetworkErrorType> getNewsBySearch(
      {required String? q}) async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: '/everything')
        .setQueryParameters(queryParameters: {
          'q': q,
          'apiKey': 'b0afa8fa755f4ab5b9ed401b49287360'
        })
        .setFunctionName(functionName: 'getNewsBySearch')
        .execute<NewsMainModel, NewsMainModel>(NewsMainModel());
    return response;
  }
}
