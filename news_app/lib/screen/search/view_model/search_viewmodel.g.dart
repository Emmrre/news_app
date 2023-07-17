// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchViewModel on _SearchViewModelBase, Store {
  late final _$searchNewsResultStateAtom = Atom(
      name: '_SearchViewModelBase.searchNewsResultState', context: context);

  @override
  ResultState<NewsMainModel?> get searchNewsResultState {
    _$searchNewsResultStateAtom.reportRead();
    return super.searchNewsResultState;
  }

  @override
  set searchNewsResultState(ResultState<NewsMainModel?> value) {
    _$searchNewsResultStateAtom.reportWrite(value, super.searchNewsResultState,
        () {
      super.searchNewsResultState = value;
    });
  }

  late final _$textEditingControllerAtom = Atom(
      name: '_SearchViewModelBase.textEditingController', context: context);

  @override
  TextEditingController? get textEditingController {
    _$textEditingControllerAtom.reportRead();
    return super.textEditingController;
  }

  @override
  set textEditingController(TextEditingController? value) {
    _$textEditingControllerAtom.reportWrite(value, super.textEditingController,
        () {
      super.textEditingController = value;
    });
  }

  late final _$myFocusNodeAtom =
      Atom(name: '_SearchViewModelBase.myFocusNode', context: context);

  @override
  FocusNode? get myFocusNode {
    _$myFocusNodeAtom.reportRead();
    return super.myFocusNode;
  }

  @override
  set myFocusNode(FocusNode? value) {
    _$myFocusNodeAtom.reportWrite(value, super.myFocusNode, () {
      super.myFocusNode = value;
    });
  }

  late final _$getNewsBySearchAsyncAction =
      AsyncAction('_SearchViewModelBase.getNewsBySearch', context: context);

  @override
  Future<void> getNewsBySearch({String? q}) {
    return _$getNewsBySearchAsyncAction.run(() => super.getNewsBySearch(q: q));
  }

  @override
  String toString() {
    return '''
searchNewsResultState: ${searchNewsResultState},
textEditingController: ${textEditingController},
myFocusNode: ${myFocusNode}
    ''';
  }
}
