import 'package:assignment/home_screen.dart';
import 'package:assignment/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = 'wln3AMBl0nKLbJI0Emh7kjHaoV9Mq4aZuFDeDouJ';
  const keyClientKey = 'SbclqQThFFrgrg1DOhlkXhK35EzdwKaBW5KMRiqk';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}
