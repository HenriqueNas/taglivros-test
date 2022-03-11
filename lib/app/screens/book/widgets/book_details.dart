import 'package:flutter/material.dart';
import 'package:technical_template/app/global/styles/app_colors.dart';
import 'package:technical_template/app/models/books.dart';

class BookDetails extends StatelessWidget {
  const BookDetails(this.book, {Key? key}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    ClipRRect bookCover() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          book.thumb,
          fit: BoxFit.fill,
          height: 260,
          width: 180,
        ),
      );
    }

    Container percentage() {
      return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: AppColors.grey,
                  ),
                  height: 5,
                  width: 100 * 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: AppColors.pink,
                  ),
                  height: 7,
                  width: 74 * 3,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                '74% read',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColors.pink),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        bookCover(),
        Container(
          margin: EdgeInsets.only(top: 32),
          width: 220,
          child: Text(
            book.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: Text(
            book.author,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        percentage(),
      ],
    );
  }
}
