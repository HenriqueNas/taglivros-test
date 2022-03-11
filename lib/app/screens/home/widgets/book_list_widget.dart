import 'package:flutter/material.dart';
import 'package:technical_template/app/models/books.dart';
import 'package:technical_template/app/screens/book/book_page.dart';

class BookListWidget extends StatefulWidget {
  final List<Book> books;

  BookListWidget({
    required this.books,
  });

  @override
  _CollectionListState createState() => _CollectionListState();
}

class _CollectionListState extends State<BookListWidget> {
  TextButton book(List<Book> books, int index) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookPage(books[index]),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  books[index].thumb,
                  fit: BoxFit.fill,
                  height: 260,
                  width: 180,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 80 * 2,
                child: Text(
                  books[index].name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
          Text(
            books[index].author,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 380,
        child: getChildren(widget.books),
      ),
    );
  }

  Widget getChildren(List<Book> books) {
    return ListView.separated(
      padding: EdgeInsets.only(right: 8),
      itemCount: books.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => SizedBox(width: 16),
      itemBuilder: (context, index) {
        return book(books, index);
      },
    );
  }
}
