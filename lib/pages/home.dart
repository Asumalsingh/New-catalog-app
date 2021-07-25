import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int n = 30;
  String name = 'codepur';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home page',
        ),
      ),
      body: Material(
        child: Center(
          child: Text("hello and welcome $n days flutter courese on $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
