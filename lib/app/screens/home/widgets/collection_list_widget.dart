import 'package:flutter/material.dart';
import 'package:technical_template/app/models/collection.dart';

class CollectionListWidget extends StatefulWidget {
  final List<Collection> collections;

  CollectionListWidget({
    required this.collections,
  });

  @override
  _CollectionListState createState() => _CollectionListState();
}

class _CollectionListState extends State<CollectionListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              'Colecttions',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          ...getChildren(widget.collections)
        ],
      ),
    );
  }

  Column books(Collection collection) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text(
            collection.name,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 24),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: ListView.separated(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              itemCount: collection.books.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemBuilder: (context, index) {
                return TextButton(
                  focusNode: FocusNode(),
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      collection.books[index].thumb,
                      fit: BoxFit.fill,
                      // height: 150,
                      // width: 150,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> getChildren(List<Collection> collections) {
    return collections.map((collection) => books(collection)).toList();
  }
}
