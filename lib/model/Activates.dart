// To parse this JSON data, do
//
//     final activates = activatesFromJson(jsonString);

import 'dart:convert';

Activates activatesFromJson(String str) => Activates.fromJson(json.decode(str));

String activatesToJson(Activates data) => json.encode(data.toJson());

class Activates {
  Activates({
    this.activates,
  });

  List<Activate> activates;

  factory Activates.fromJson(Map<String, dynamic> json) => Activates(
    activates: List<Activate>.from(json["activates"].map((x) => Activate.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "activates": List<dynamic>.from(activates.map((x) => x.toJson())),
  };
}

class Activate {
  Activate({
    this.itemName,
    this.itemCount,
    this.unitPrice,
    this.totalPrice,
  });

  String itemName;
  String itemCount;
  String unitPrice;
  int totalPrice;

  factory Activate.fromJson(Map<String, dynamic> json) => Activate(
    itemName: json["item_name"],
    itemCount: json["item_count"],
    unitPrice: json["unitPrice"],
    totalPrice: json["TotalPrice"],
  );

  Map<String, dynamic> toJson() => {
    "item_name": itemName,
    "item_count": itemCount,
    "unitPrice": unitPrice,
    "TotalPrice": totalPrice,
  };
}
