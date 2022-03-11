import 'package:mobx/mobx.dart';
import 'package:technical_template/app/models/books.dart';
import 'package:technical_template/app/models/collection.dart';
import 'package:technical_template/app/screens/home/interfaces/home_repository_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final IHomeRepository repository;

  _HomeController({required this.repository});

  @observable
  ObservableFuture<List<Collection>>? collectionResponse;

  @observable
  List<bool> _categories = [true, false, false];

  @computed
  List<bool> get getCategories => this._categories;

  @action
  void alterCategory(int index) {
    this._categories = [false, false, false];
    this._categories[index] = true;
  }

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
