import 'package:flutter/material.dart';
import 'package:technical_template/app/global/styles/app_theme.dart';
import 'package:technical_template/app/screens/screens_wrapper/tabs_wrapper.dart';

import 'app/routes/routes.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.generateRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Headboard',
      theme: AppConfig.themeData,
      home: TabsWrapper(),
    );
  }
}
