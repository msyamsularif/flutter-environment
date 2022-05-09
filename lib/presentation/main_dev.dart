import 'package:flutter/material.dart';

import '../core/app_config.dart';
import '../main.dart';

void main() {
  var configuredApp = const AppConfig(
    appEnvironment: AppEnvironment.dev,
    appName: 'Build flavors DEV',
    flavorName: 'development',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: MyApp(),
  );

  runApp(configuredApp);
}
