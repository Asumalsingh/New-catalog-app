import 'dart:convert';

import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Models/items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home page',
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        //itemCount: CatalogModel.items.length,
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            // item: CatalogModel.items[index],
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
