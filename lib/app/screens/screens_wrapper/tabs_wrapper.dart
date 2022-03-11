import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:technical_template/app/global/styles/app_colors.dart';
import 'package:technical_template/app/screens/bookmarks/bookmarks_page.dart';
import 'package:technical_template/app/screens/home/home_page.dart';
import 'package:technical_template/app/screens/settings/settings_page.dart';

enum TabBars {
  Home,
  Bookmark,
  Settings,
}

class TabsWrapper extends StatelessWidget {
  TabsWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<TabBars, MapEntry<IconData, String>> tabOptions = {
      TabBars.Home: MapEntry(FeatherIcons.home, 'Home'),
      TabBars.Bookmark: MapEntry(FeatherIcons.bookmark, 'Bookmarks'),
      TabBars.Settings: MapEntry(FeatherIcons.settings, 'Settings'),
    };

    Tab tab(TabBars tab) {
      return Tab(
        icon: Icon(tabOptions[tab]?.key, size: 18),
        text: tabOptions[tab]?.value,
        height: 80,
      );
    }

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          body: Container(
            child: TabBarView(
              children: [
                HomePage(),
                BookmarksPage(),
                SettingsPage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Theme.of(context).colorScheme.onSecondary,
              indicatorWeight: 1.0,
              indicatorColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: AppColors.grey,
              tabs: [
                tab(TabBars.Home),
                tab(TabBars.Bookmark),
                tab(TabBars.Settings),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
