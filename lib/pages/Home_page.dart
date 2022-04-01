import 'package:clone_practices/Widgets/Drawer.dart';
import 'package:clone_practices/Widgets/items_widgets.dart';
import 'package:clone_practices/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
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
            itemCount: dummyList.length,
            itemBuilder: (BuildContext context, int index) {
              return Itemswidgets(
                item: dummyList[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
