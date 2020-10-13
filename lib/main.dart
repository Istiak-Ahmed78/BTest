import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/HumanPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HumanPage(),
    );
  }
}
