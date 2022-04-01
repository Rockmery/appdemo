import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue[100],
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Profile_pic1.png"),
              ),
              margin: EdgeInsets.zero,
              accountEmail: Text("Ramaswami101@gmail.com"),
              accountName: Text(" Ramaswami "),
            ),
          ),
          ListTile(
            leading: (Icon(CupertinoIcons.home)),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: (Icon(CupertinoIcons.alarm)),
            title: Text("Alarm", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.add),
            title: Text("Add", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.bookmark_solid),
            title: Text("Save", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.share_solid),
            title: Text("share", style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
