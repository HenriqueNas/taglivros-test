import 'package:mobx/mobx.dart';
import 'package:technical_template/app/models/books.dart';
import 'package:technical_template/app/models/collection.dart';
import 'package:technical_template/app/screens/bookmarks/interfaces/bookmarks_repository_interface.dart';

part 'bookmarks_controller.g.dart';

class BookmarksController = _BookmarksController with _$BookmarksController;

abstract class _BookmarksController with Store {
  final IBookmarksRepository repository;

  _BookmarksController({required this.repository});

  @observable
  ObservableFuture<List<Collection>>? collectionResponse;

  @computed
  bool get collectionResponseHasResults =>
      collectionResponse != null &&
      collectionResponse?.status == FutureStatus.fulfilled &&
      collectionResponse?.result != null;

  @computed
  bool get collectionResponseIsLoading =>
      collectionResponse != null &&
      collectionResponse?.status == FutureStatus.pending;

  @computed
  bool get collectionResponseHasError =>
      collectionResponse != null &&
      collectionResponse?.status == FutureStatus.rejected;

  @action
  Future<void> getCollections() async {
    try {
      collectionResponse = ObservableFuture(repository.getCollections());
    } catch (error) {
      collectionResponse = ObservableFuture.value([]);
    }
  }

  //mockedRandonBooks
  @action
  List<Book> getRandomBooks() {
    List<List<Book>>? booksList = collectionResponse?.value
        ?.map((collection) => collection.books)
        .toList();

    List<Book>? books = booksList?.expand((list) => list).toList();
    books?.shuffle();
    return books?.sublist(0, 7) ?? [];
  }
}
