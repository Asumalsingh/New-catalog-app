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
    await Future.delayed(Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home page',
        ),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (BuildContext, index) {
                final item = CatalogModel.items[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: GridTile(
                    header: Container(
                      child: Text(item.name,
                          style: TextStyle(color: Colors.white)),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                    ),
                    footer: Container(
                      child: Text(item.price.toString(),
                          style: TextStyle(color: Colors.white)),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    child: Image.network(item.image),
                  ),
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
