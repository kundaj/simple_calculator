import 'package:flutter/material.dart';
import 'Calculator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Simple Calculator',
      home: new Calculator(),
      theme: new ThemeData(
        primaryColor: Colors.red[100],
      ),
    );
  }
}
