import 'package:get_it/get_it.dart';
import 'package:news_app/data/news/repository/i_news_repository.dart';
import 'package:news_app/data/news/repository/news_repository.dart';
import 'package:news_app/data/news/services/i_news_services.dart';
import 'package:news_app/data/news/services/news_services.dart';
import 'package:news_app/screen/explore_news/view_model/explore_view_model.dart';
import 'package:news_app/screen/news_page/view_model/news_main_view_model.dart';
import 'package:news_app/screen/search/view_model/search_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupViewModel();
  setupRepository();
  setupServices();
}

void setupViewModel() {
  getIt
    ..registerLazySingleton<NewsMainViewModel>(
        () => NewsMainViewModel(iNewsRepository: getIt()))
    ..registerLazySingleton<SearchViewModel>(
        () => SearchViewModel(iNewsRepository: getIt()))
    ..registerLazySingleton<ExploreViewModel>(
        () => ExploreViewModel(iNewsRepository: getIt()));
}

void setupRepository() {
  getIt.registerLazySingleton<INewsRepository>(() => NewsRepository(
        iNewsServices: getIt(),
      ));
}

void setupServices() {
  getIt..registerLazySingleton<INewsServices>(NewsServices.new);
}
