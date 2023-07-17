import 'package:mobx/mobx.dart';
import 'package:news_app/data/news/model/news_category_model.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/data/news/repository/i_news_repository.dart';
import 'package:news_app/results/base_errors_model.dart';
import 'package:news_app/results/result_state.dart';
part 'news_main_view_model.g.dart';

class NewsMainViewModel = _NewsMainViewModelBase with _$NewsMainViewModel;

abstract class _NewsMainViewModelBase with Store {
  final INewsRepository? iNewsRepository;

  _NewsMainViewModelBase({required this.iNewsRepository});

  @observable
  ObservableList<NewsCategoryModel>? newsList = ObservableList();

  @observable
  ResultState<NewsMainModel?> newsResultState = const ResultState.initial();

  @observable
  ResultState<NewsMainModel?> newsResultStateGb = const ResultState.initial();

   @observable
  ResultState<NewsMainModel?> newsResultStateTr = const ResultState.initial();

  @observable
  ResultState<NewsMainModel?> newsResultStateAu = const ResultState.initial();

  @action
  Future<void> getNewsByCountry({String? countryName}) async {
    newsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getEverythingNews(countryName: countryName);
    result?.when(success: (data) {
      newsResultState = ResultState.completed(data);
    }, failure: (error) {
      newsResultState = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }

  @action
  Future<void> getNewsByCountryGB({String? countryName}) async {
    newsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getEverythingNews(countryName: countryName);
    result?.when(success: (data) {
      newsResultStateGb = ResultState.completed(data);
    }, failure: (error) {
      newsResultStateGb = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }

  @action
  Future<void> getNewsByCountryTR({String? countryName}) async {
    newsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getEverythingNews(countryName: countryName);
    result?.when(success: (data) {
      newsResultStateTr = ResultState.completed(data);
    }, failure: (error) {
      newsResultStateTr = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }

   @action
  Future<void> getNewsByCountryAu({String? countryName}) async {
    newsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getEverythingNews(countryName: countryName);
    result?.when(success: (data) {
      newsResultStateAu = ResultState.completed(data);
    }, failure: (error) {
      newsResultStateAu = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }
}
