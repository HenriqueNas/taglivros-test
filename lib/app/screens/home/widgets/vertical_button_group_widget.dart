import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../home_controller.dart';

class VerticalButtonGroup extends StatelessWidget {
  VerticalButtonGroup(this.controller);

  final HomeController controller;

  Widget button(String text) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        margin: EdgeInsets.only(right: 20),
        child: RotatedBox(
          quarterTurns: 3,
          child: ToggleButtons(
            children: <Widget>[
              button('Popular'),
              button('Bestsellers'),
              button('Newest'),
            ],
            onPressed: (int index) {
              controller.alterCategory(index);
            },
            isSelected: controller.getCategories,
            renderBorder: false,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      );
    });
  }
}
