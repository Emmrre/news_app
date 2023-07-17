// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExploreViewModel on _ExploreViewModelBase, Store {
  late final _$exploreListAtom =
      Atom(name: '_ExploreViewModelBase.exploreList', context: context);

  @override
  List<String?> get exploreList {
    _$exploreListAtom.reportRead();
    return super.exploreList;
  }

  @override
  set exploreList(List<String?> value) {
    _$exploreListAtom.reportWrite(value, super.exploreList, () {
      super.exploreList = value;
    });
  }

  late final _$exploreNewsResultStateAtom = Atom(
      name: '_ExploreViewModelBase.exploreNewsResultState', context: context);

  @override
  ResultState<NewsMainModel?> get exploreNewsResultState {
    _$exploreNewsResultStateAtom.reportRead();
    return super.exploreNewsResultState;
  }

  @override
  set exploreNewsResultState(ResultState<NewsMainModel?> value) {
    _$exploreNewsResultStateAtom
        .reportWrite(value, super.exploreNewsResultState, () {
      super.exploreNewsResultState = value;
    });
  }

  late final _$getNewsBySearchAsyncAction =
      AsyncAction('_ExploreViewModelBase.getNewsBySearch', context: context);

  @override
  Future<void> getNewsBySearch({String? q}) {
    return _$getNewsBySearchAsyncAction.run(() => super.getNewsBySearch(q: q));
  }

  @override
  String toString() {
    return '''
exploreList: ${exploreList},
exploreNewsResultState: ${exploreNewsResultState}
    ''';
  }
}
