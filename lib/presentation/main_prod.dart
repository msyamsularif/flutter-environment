import 'package:flutter/material.dart';

import '../core/app_config.dart';
import '../main.dart';

void main() {
  var configuredApp = const AppConfig(
    appEnvironment: AppEnvironment.prod,
    appName: 'Build flavors',
    flavorName: 'production',
    apiBaseUrl: 'https://api.example.com/',
    child: MyApp(),
  );

  runApp(configuredApp);
}
