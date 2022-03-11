import 'package:flutter/material.dart';

class BookmarksHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 40, left: 25, bottom: 45, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'this is your',
                style: Theme.of(context).textTheme.headline2,
              ),
              Divider(
                height: 5,
              ),
              Text(
                'Personal library!',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
