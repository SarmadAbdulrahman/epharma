// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    this.items,
  });

  List<Item> items;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.id,
    this.name,
    this.desc,
    this.dragId,
    this.catId,
    this.price,
    this.imagePath,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String desc;
  int dragId;
  int catId;
  String price;
  String imagePath;
  dynamic createdAt;
  dynamic updatedAt;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    name: json["name"],
    desc: json["desc"],
    dragId: json["drag_id"],
    catId: json["cat_id"],
    price: json["price"],
    imagePath: json["image_path"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "desc": desc,
    "drag_id": dragId,
    "cat_id": catId,
    "price": price,
    "image_path": imagePath,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
