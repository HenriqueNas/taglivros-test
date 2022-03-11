import 'package:flutter/material.dart';
import 'package:technical_template/app/models/books.dart';
import 'package:technical_template/app/screens/book/book_page.dart';
import 'package:technical_template/app/screens/bookmarks/bookmarks_page.dart';
import 'package:technical_template/app/screens/home/home_page.dart';
import 'package:technical_template/app/screens/settings/settings_page.dart';

import 'paths.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  MaterialPageRoute pageRoute(String name, Widget screen) {
    return MaterialPageRoute(
      settings: RouteSettings(name: name),
      builder: (context) => screen,
    );
  }

  switch (settings.name) {
    case Paths.home:
      return pageRoute(Paths.home, HomePage());
    case Paths.bookmarks:
      return pageRoute(Paths.bookmarks, BookmarksPage());
    case Paths.settings:
      return pageRoute(Paths.settings, SettingsPage());
    case Paths.book:
      return pageRoute(Paths.settings, SettingsPage());
    default:
      return MaterialPageRoute(
        settings: RouteSettings(name: Paths.home),
        builder: (context) => HomePage(),
      );
  }
}
