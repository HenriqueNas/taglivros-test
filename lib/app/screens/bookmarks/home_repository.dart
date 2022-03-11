import 'package:technical_template/app/models/collection.dart';
import 'package:technical_template/app/screens/bookmarks/interfaces/bookmarks_repository_interface.dart';
import 'package:technical_template/app/services/rest_client.dart';

class BookmarksRepository implements IBookmarksRepository {
  final RestClient restClient;

  BookmarksRepository({required this.restClient});
  @override
  Future<List<Collection>> getCollections() async {
    return restClient.getCollections();
  }
}
