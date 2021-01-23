// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.drugStores,
  });

  List<DrugStore> drugStores;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    drugStores: List<DrugStore>.from(json["DrugStores"].map((x) => DrugStore.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "DrugStores": List<dynamic>.from(drugStores.map((x) => x.toJson())),
  };
}

class DrugStore {
  DrugStore({
    this.id,
    this.userId,
    this.name,
    this.address,
    this.nearPoint,
    this.latitude,
    this.longitude,
    this.status,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.imagePath,
  });

  int id;
  int userId;
  String name;
  String address;
  String nearPoint;
  dynamic latitude;
  dynamic longitude;
  String status;
  int blocked;
  dynamic createdAt;
  dynamic updatedAt;
  String imagePath;

  factory DrugStore.fromJson(Map<String, dynamic> json) => DrugStore(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    address: json["address"],
    nearPoint: json["nearPoint"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    status: json["status"],
    blocked: json["blocked"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    imagePath: json["image_path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "address": address,
    "nearPoint": nearPoint,
    "latitude": latitude,
    "longitude": longitude,
    "status": status,
    "blocked": blocked,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "image_path": imagePath,
  };
}
