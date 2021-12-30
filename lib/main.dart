import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/login_page.dart';
import 'pages/menu_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Flutter Challenge 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            MenuPage(),
            LoginPage(),
          ],
        ),
      ),
    );
  }
}
