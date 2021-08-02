import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Asumal singh"),
              accountEmail: Text("asuteh8@gmail.com"),
              currentAccountPicture: Image.asset("assets/Images/logo.png"),
            ),
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.home,
                //size: 30,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                //size: 30,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                //size: 30,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
