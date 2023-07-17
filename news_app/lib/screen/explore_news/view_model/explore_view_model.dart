import 'package:mobx/mobx.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/data/news/repository/i_news_repository.dart';
import 'package:news_app/results/base_errors_model.dart';
import 'package:news_app/results/result_state.dart';
part 'explore_view_model.g.dart';

class ExploreViewModel = _ExploreViewModelBase with _$ExploreViewModel;

abstract class _ExploreViewModelBase with Store {
  final INewsRepository? iNewsRepository;

  _ExploreViewModelBase({required this.iNewsRepository});

  @observable
  List<String?> exploreList = [
    'Finance',
    'Business',
    'Global',
    'Entertainment',
    'Health',
    'Science',
    'Sports',
    'Technology',
    'Cinema',
    'Games',
    'Travel',
    'Writing',
    'Politics',
    'Horoscopes',
    'Life Styles',
    'Crime'
  ];

   @observable
  ResultState<NewsMainModel?> exploreNewsResultState =
      const ResultState.initial();

   @action
  Future<void> getNewsBySearch({String? q}) async {
    exploreNewsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getNewsBySearch(q: q);
    result?.when(success: (data) {
      exploreNewsResultState = ResultState.completed(data);
    }, failure: (error) {
      exploreNewsResultState = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }
}
