import 'package:clone_practices/Widgets/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  List No = List<String>.generate(100, (index) => "No.$index");

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[300],
          title: Center(child: Text("Groods")),
        ),
        drawer: MyDrawer(),
        body: Card(
          child: ListView.builder(
            itemCount: No.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.lightBlue[100],
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    "No. $index",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
