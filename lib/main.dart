import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int n = 30;
  String name = 'codepur';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Text("hello and welcome $n days flutter courese on $name"),
        ),
      ),
    );
  }
}
