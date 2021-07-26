import 'package:catalog_app/pages/home.dart';
import 'package:catalog_app/pages/login.dart';
import 'package:catalog_app/pages/routs.dart';
import 'package:catalog_app/pages/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
