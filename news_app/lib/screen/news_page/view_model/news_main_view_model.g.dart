// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_main_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsMainViewModel on _NewsMainViewModelBase, Store {
  late final _$newsListAtom =
      Atom(name: '_NewsMainViewModelBase.newsList', context: context);

  @override
  ObservableList<NewsCategoryModel>? get newsList {
    _$newsListAtom.reportRead();
    return super.newsList;
  }

  @override
  set newsList(ObservableList<NewsCategoryModel>? value) {
    _$newsListAtom.reportWrite(value, super.newsList, () {
      super.newsList = value;
    });
  }

  late final _$newsResultStateAtom =
      Atom(name: '_NewsMainViewModelBase.newsResultState', context: context);

  @override
  ResultState<NewsMainModel?> get newsResultState {
    _$newsResultStateAtom.reportRead();
    return super.newsResultState;
  }

  @override
  set newsResultState(ResultState<NewsMainModel?> value) {
    _$newsResultStateAtom.reportWrite(value, super.newsResultState, () {
      super.newsResultState = value;
    });
  }

  late final _$newsResultStateGbAtom =
      Atom(name: '_NewsMainViewModelBase.newsResultStateGb', context: context);

  @override
  ResultState<NewsMainModel?> get newsResultStateGb {
    _$newsResultStateGbAtom.reportRead();
    return super.newsResultStateGb;
  }

  @override
  set newsResultStateGb(ResultState<NewsMainModel?> value) {
    _$newsResultStateGbAtom.reportWrite(value, super.newsResultStateGb, () {
      super.newsResultStateGb = value;
    });
  }

  late final _$newsResultStateTrAtom =
      Atom(name: '_NewsMainViewModelBase.newsResultStateTr', context: context);

  @override
  ResultState<NewsMainModel?> get newsResultStateTr {
    _$newsResultStateTrAtom.reportRead();
    return super.newsResultStateTr;
  }

  @override
  set newsResultStateTr(ResultState<NewsMainModel?> value) {
    _$newsResultStateTrAtom.reportWrite(value, super.newsResultStateTr, () {
      super.newsResultStateTr = value;
    });
  }

  late final _$newsResultStateAuAtom =
      Atom(name: '_NewsMainViewModelBase.newsResultStateAu', context: context);

  @override
  ResultState<NewsMainModel?> get newsResultStateAu {
    _$newsResultStateAuAtom.reportRead();
    return super.newsResultStateAu;
  }

  @override
  set newsResultStateAu(ResultState<NewsMainModel?> value) {
    _$newsResultStateAuAtom.reportWrite(value, super.newsResultStateAu, () {
      super.newsResultStateAu = value;
    });
  }

  late final _$getNewsByCountryAsyncAction =
      AsyncAction('_NewsMainViewModelBase.getNewsByCountry', context: context);

  @override
  Future<void> getNewsByCountry({String? countryName}) {
    return _$getNewsByCountryAsyncAction
        .run(() => super.getNewsByCountry(countryName: countryName));
  }

  late final _$getNewsByCountryGBAsyncAction = AsyncAction(
      '_NewsMainViewModelBase.getNewsByCountryGB',
      context: context);

  @override
  Future<void> getNewsByCountryGB({String? countryName}) {
    return _$getNewsByCountryGBAsyncAction
        .run(() => super.getNewsByCountryGB(countryName: countryName));
  }

  late final _$getNewsByCountryTRAsyncAction = AsyncAction(
      '_NewsMainViewModelBase.getNewsByCountryTR',
      context: context);

  @override
  Future<void> getNewsByCountryTR({String? countryName}) {
    return _$getNewsByCountryTRAsyncAction
        .run(() => super.getNewsByCountryTR(countryName: countryName));
  }

  late final _$getNewsByCountryAuAsyncAction = AsyncAction(
      '_NewsMainViewModelBase.getNewsByCountryAu',
      context: context);

  @override
  Future<void> getNewsByCountryAu({String? countryName}) {
    return _$getNewsByCountryAuAsyncAction
        .run(() => super.getNewsByCountryAu(countryName: countryName));
  }

  @override
  String toString() {
    return '''
newsList: ${newsList},
newsResultState: ${newsResultState},
newsResultStateGb: ${newsResultStateGb},
newsResultStateTr: ${newsResultStateTr},
newsResultStateAu: ${newsResultStateAu}
    ''';
  }
}
