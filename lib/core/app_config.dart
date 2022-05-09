import 'package:flutter/material.dart';

enum AppEnvironment { dev, prod, stag }

class AppConfig extends InheritedWidget {
  final AppEnvironment appEnvironment;
  final String appName;
  final String flavorName;
  final String apiBaseUrl;

  const AppConfig({
    Key? key,
    required Widget child,
    required this.appEnvironment,
    required this.appName,
    required this.flavorName,
    required this.apiBaseUrl,
  }) : super(key: key, child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
