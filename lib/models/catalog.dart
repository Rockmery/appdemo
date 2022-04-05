import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphone12 pro",
      description: "Apple iphone 12th garation",
      price: 999,
      color: "golden",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) => Item(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        price: map["price"],
        color: map["color"],
        image: map["image"],
      );

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "color": color,
        "image": image,
      };
}
