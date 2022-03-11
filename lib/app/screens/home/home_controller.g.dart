// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<List<bool>>? _$getCategoriesComputed;

  @override
  List<bool> get getCategories => (_$getCategoriesComputed ??=
          Computed<List<bool>>(() => super.getCategories,
              name: '_HomeController.getCategories'))
      .value;
  Computed<bool>? _$collectionResponseHasResultsComputed;

  @override
  bool get collectionResponseHasResults =>
      (_$collectionResponseHasResultsComputed ??= Computed<bool>(
              () => super.collectionResponseHasResults,
              name: '_HomeController.collectionResponseHasResults'))
          .value;
  Computed<bool>? _$collectionResponseIsLoadingComputed;

  @override
  bool get collectionResponseIsLoading =>
      (_$collectionResponseIsLoadingComputed ??= Computed<bool>(
              () => super.collectionResponseIsLoading,
              name: '_HomeController.collectionResponseIsLoading'))
          .value;
  Computed<bool>? _$collectionResponseHasErrorComputed;

  @override
  bool get collectionResponseHasError =>
      (_$collectionResponseHasErrorComputed ??= Computed<bool>(
              () => super.collectionResponseHasError,
              name: '_HomeController.collectionResponseHasError'))
          .value;

  final _$collectionResponseAtom =
      Atom(name: '_HomeController.collectionResponse');

  @override
  ObservableFuture<List<Collection>>? get collectionResponse {
    _$collectionResponseAtom.reportRead();
    return super.collectionResponse;
  }

  @override
  set collectionResponse(ObservableFuture<List<Collection>>? value) {
    _$collectionResponseAtom.reportWrite(value, super.collectionResponse, () {
      super.collectionResponse = value;
    });
  }

  final _$_categoriesAtom = Atom(name: '_HomeController._categories');

  @override
  List<bool> get _categories {
    _$_categoriesAtom.reportRead();
    return super._categories;
  }

  @override
  set _categories(List<bool> value) {
    _$_categoriesAtom.reportWrite(value, super._categories, () {
      super._categories = value;
    });
  }

  final _$getCollectionsAsyncAction =
      AsyncAction('_HomeController.getCollections');

  @override
  Future<void> getCollections() {
    return _$getCollectionsAsyncAction.run(() => super.getCollections());
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void alterCategory(int index) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.alterCategory');
    try {
      return super.alterCategory(index);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Book> getRandomBooks() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.getRandomBooks');
    try {
      return super.getRandomBooks();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionResponse: ${collectionResponse},
getCategories: ${getCategories},
collectionResponseHasResults: ${collectionResponseHasResults},
collectionResponseIsLoading: ${collectionResponseIsLoading},
collectionResponseHasError: ${collectionResponseHasError}
    ''';
  }
}
