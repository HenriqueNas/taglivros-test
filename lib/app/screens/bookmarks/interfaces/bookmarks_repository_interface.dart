import 'package:technical_template/app/models/collection.dart';

abstract class IBookmarksRepository {
  Future<List<Collection>> getCollections();
}
