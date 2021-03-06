// To parse this JSON data, do
//
//     final orders = ordersFromJson(jsonString);

import 'dart:convert';

Orders ordersFromJson(String str) => Orders.fromJson(json.decode(str));

String ordersToJson(Orders data) => json.encode(data.toJson());

class Orders {
  Orders({
    this.orders,
  });

  List<Order> orders;

  factory Orders.fromJson(Map<String, dynamic> json) => Orders(
    orders: List<Order>.from(json["Orders"].map((x) => Order.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Orders": List<dynamic>.from(orders.map((x) => x.toJson())),
  };
}

class Order {
  Order({
    this.itemName,
    this.status,
    this.orderType,
    this.pharmacyName,
    this.itemCount,
    this.id
  });

  String itemName;
  String orderType;
  int id;
  String status;
  String pharmacyName;
  String itemCount;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    itemName: json["item_name"],
    status: json["status"],
    orderType: json["orderType"],
    pharmacyName: json["pharmacyName"],
    itemCount: json["item_count"], id:json["id"]
  );

  Map<String, dynamic> toJson() => {
    "item_name": itemName,
    "status": status,
    "pharmacyName": pharmacyName,
    "item_count": itemCount,
  };
}
