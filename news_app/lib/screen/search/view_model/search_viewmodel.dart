import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/data/news/model/news_main_model.dart';
import 'package:news_app/data/news/repository/i_news_repository.dart';
import 'package:news_app/results/base_errors_model.dart';
import 'package:news_app/results/result_state.dart';
part 'search_viewmodel.g.dart';

class SearchViewModel = _SearchViewModelBase with _$SearchViewModel;

abstract class _SearchViewModelBase with Store {
  final INewsRepository? iNewsRepository;

  _SearchViewModelBase({required this.iNewsRepository});

  @observable
  ResultState<NewsMainModel?> searchNewsResultState =
      const ResultState.initial();

  @observable
  TextEditingController? textEditingController = TextEditingController();

  @observable
  FocusNode? myFocusNode = FocusNode();



  @action
  Future<void> getNewsBySearch({String? q}) async {
    searchNewsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iNewsRepository?.getNewsBySearch(q: q);
    result?.when(success: (data) {
      searchNewsResultState = ResultState.completed(data);
    }, failure: (error) {
      searchNewsResultState = ResultState.failed(
          BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }
}
