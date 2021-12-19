import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/routes.dart';
import 'package:instagram/theame.dart';

const theameColor = Colors.black;
const textColor = Colors.white;
const iconColorInactive = Colors.white54;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
