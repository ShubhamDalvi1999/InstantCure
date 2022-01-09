import 'package:flutter/material.dart';
import 'package:instant_cure_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: InstantCure(),
    );
  }
}
