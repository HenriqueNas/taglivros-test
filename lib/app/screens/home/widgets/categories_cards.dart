import 'package:flutter/material.dart';
import 'package:technical_template/app/global/assets/assets_paths.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Expanded card({
      required String category,
      required String asset,
      required AlignmentGeometry align,
    }) {
      return Expanded(
        child: TextButton(
          focusNode: FocusNode(),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {},
          child: Column(
            children: [
              Container(
                child: Text(
                  category,
                  style: Theme.of(context).textTheme.headline4,
                ),
                padding: EdgeInsets.only(bottom: 8),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    asset,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: align,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 32, bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 16, left: 16),
            child: Text(
              'A book . . . ',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          GridView.count(
            childAspectRatio: 1.3,
            physics: ClampingScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            children: <Widget>[
              card(
                category: '.. to laught',
                asset: AssetsPaths.guiaDoMochileiro,
                align: Alignment(0, 0.6),
              ),
              card(
                category: '.. to travel',
                asset: AssetsPaths.divinaComedia,
                align: Alignment(0, -0.4),
              ),
              card(
                category: '.. to scare',
                asset: AssetsPaths.it,
                align: Alignment(0, -0.4),
              ),
              card(
                category: '.. to think',
                asset: AssetsPaths.revolucaoDosBixos,
                align: Alignment(0, -0.1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
