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
                backgroundImage: AssetImage("assets/images/Profile_pic.jpg"),
              ),
              margin: EdgeInsets.zero,
              accountEmail: Text("Demoemail@gmail.com"),
              accountName: Text(" Suryavansi Ram "),
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
          )
        ],
      ),
    );
  }
}
