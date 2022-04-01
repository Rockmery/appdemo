import 'package:clone_practices/Widgets/Drawer.dart';
import 'package:clone_practices/Widgets/items_widgets.dart';
import 'package:clone_practices/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[300],
          title: Center(
              child: Text(
            "Groods",
          )),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Itemswidgets(
                item: CatalogModel.items[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
