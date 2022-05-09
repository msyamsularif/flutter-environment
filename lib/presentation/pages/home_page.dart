import 'package:flutter/material.dart';

import '../../core/app_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(config.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the ${config.flavorName} app.'),
            Text('Backend API url is ${config.apiBaseUrl}'),
            Text('App Environtment is ${config.appEnvironment}'),
          ],
        ),
      ),
    );
  }
}
