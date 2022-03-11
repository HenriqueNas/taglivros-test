import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeHeader extends StatelessWidget {
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
                'Hello Jonh Doe',
                style: Theme.of(context).textTheme.headline2,
              ),
              Divider(
                height: 5,
              ),
              Text(
                'Let\'s discover!',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          Icon(FeatherIcons.search),
        ],
      ),
    );
  }
}
