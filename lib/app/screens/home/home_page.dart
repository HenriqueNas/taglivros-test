import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:technical_template/app/screens/home/home_controller.dart';
import 'package:technical_template/app/screens/home/home_repository.dart';
import 'package:technical_template/app/screens/home/widgets/book_list_widget.dart';
import 'package:technical_template/app/screens/home/widgets/categories_cards.dart';
import 'package:technical_template/app/screens/home/widgets/collection_list_widget.dart';
import 'package:technical_template/app/screens/home/widgets/vertical_button_group_widget.dart';
import 'package:technical_template/app/services/rest_client.dart';

import 'widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController(
    repository: HomeRepository(
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
      // bottom: false,
      child: ListView(
        padding: EdgeInsets.only(bottom: 16),
        shrinkWrap: false,
        children: [
          HomeHeader(),
          sectionedBooks,
          CategoriesCards(),
          collections,
        ],
      ),
    );
  }

  Observer get sectionedBooks {
    return Observer(
      builder: (_) {
        if (controller.collectionResponseIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.collectionResponseHasResults) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalButtonGroup(controller),
              BookListWidget(
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

  Observer get collections {
    return Observer(
      builder: (_) {
        if (controller.collectionResponseIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.collectionResponseHasResults) {
          return CollectionListWidget(
            collections: controller.collectionResponse?.value ?? [],
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
