// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookmarksController on _BookmarksController, Store {
  Computed<bool>? _$collectionResponseHasResultsComputed;

  @override
  bool get collectionResponseHasResults =>
      (_$collectionResponseHasResultsComputed ??= Computed<bool>(
              () => super.collectionResponseHasResults,
              name: '_BookmarksController.collectionResponseHasResults'))
          .value;
  Computed<bool>? _$collectionResponseIsLoadingComputed;

  @override
  bool get collectionResponseIsLoading =>
      (_$collectionResponseIsLoadingComputed ??= Computed<bool>(
              () => super.collectionResponseIsLoading,
              name: '_BookmarksController.collectionResponseIsLoading'))
          .value;
  Computed<bool>? _$collectionResponseHasErrorComputed;

  @override
  bool get collectionResponseHasError =>
      (_$collectionResponseHasErrorComputed ??= Computed<bool>(
              () => super.collectionResponseHasError,
              name: '_BookmarksController.collectionResponseHasError'))
          .value;

  final _$collectionResponseAtom =
      Atom(name: '_BookmarksController.collectionResponse');

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

  final _$getCollectionsAsyncAction =
      AsyncAction('_BookmarksController.getCollections');

  @override
  Future<void> getCollections() {
    return _$getCollectionsAsyncAction.run(() => super.getCollections());
  }

  final _$_BookmarksControllerActionController =
      ActionController(name: '_BookmarksController');

  @override
  List<Book> getRandomBooks() {
    final _$actionInfo = _$_BookmarksControllerActionController.startAction(
        name: '_BookmarksController.getRandomBooks');
    try {
      return super.getRandomBooks();
    } finally {
      _$_BookmarksControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionResponse: ${collectionResponse},
collectionResponseHasResults: ${collectionResponseHasResults},
collectionResponseIsLoading: ${collectionResponseIsLoading},
collectionResponseHasError: ${collectionResponseHasError}
    ''';
  }
}
