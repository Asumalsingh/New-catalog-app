import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Models/items_widgets.dart';
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
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
