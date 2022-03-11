import 'package:technical_template/app/models/collection.dart';
import 'package:technical_template/app/screens/home/interfaces/home_repository_interface.dart';
import 'package:technical_template/app/services/rest_client.dart';

class HomeRepository implements IHomeRepository {
  final RestClient restClient;

  HomeRepository({required this.restClient});
  @override
  Future<List<Collection>> getCollections() async {
    return restClient.getCollections();
  }
}
