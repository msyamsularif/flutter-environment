import 'package:flutter/material.dart';

import 'core/app_config.dart';
import 'presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Call AppConfig.of(context) anywhere to obtain the
    // environment specific configuration
    final config = AppConfig.of(context)!;

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
