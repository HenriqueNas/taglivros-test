import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:technical_template/app/global/styles/app_colors.dart';
import 'package:technical_template/app/models/books.dart';
import 'package:technical_template/app/screens/book/widgets/book_details.dart';

class BookPage extends StatelessWidget {
  const BookPage(
    this.book, {
    Key? key,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      FeatherIcons.chevronLeft,
                      size: 30,
                      color: AppColors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FeatherIcons.menu,
                      size: 30,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              BookDetails(book),
            ],
          ),
        ),
      ),
    );
  }
}
