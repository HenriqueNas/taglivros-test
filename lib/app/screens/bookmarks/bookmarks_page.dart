import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:technical_template/app/screens/bookmarks/bookmarks_controller.dart';
import 'package:technical_template/app/screens/bookmarks/home_repository.dart';
import 'package:technical_template/app/screens/bookmarks/widgets/header_widget.dart';
import 'package:technical_template/app/screens/bookmarks/widgets/bookmarks_category_widget.dart';
import 'package:technical_template/app/services/rest_client.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  BookmarksController controller = BookmarksController(
    repository: BookmarksRepository(
      restClient: RestClient(Dio()),
    ),
  );

  @override
  void initState() {
    super.initState();
    controller.getCollections();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(bottom: 16),
        shrinkWrap: true,
        children: [
          BookmarksHeader(),
          bookmarksContent,
        ],
      ),
    );
  }

  Observer get bookmarksContent {
    return Observer(
      builder: (_) {
        if (controller.collectionResponseIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.collectionResponseHasResults) {
          return Column(
            children: [
              BookmarksList(
                bookmarks: Bookmarks.Favorites,
                books: this.controller.getRandomBooks(),
              ),
              BookmarksList(
                bookmarks: Bookmarks.Finished,
                books: this.controller.getRandomBooks(),
              ),
            ],
          );
        }

        if (controller.collectionResponseHasError) {
          return Center(
            child: Text('Erro...'),
          );
        }

        return Container();
      },
    );
  }
}
