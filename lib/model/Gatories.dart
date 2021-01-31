// To parse this JSON data, do
//
//     final gatories = gatoriesFromJson(jsonString);

import 'dart:convert';

Gatories gatoriesFromJson(String str) => Gatories.fromJson(json.decode(str));

String gatoriesToJson(Gatories data) => json.encode(data.toJson());

class Gatories {
  Gatories({
    this.gatories,
  });

  List<Gatory> gatories;

  factory Gatories.fromJson(Map<String, dynamic> json) => Gatories(
    gatories: List<Gatory>.from(json["Gatories"].map((x) => Gatory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Gatories": List<dynamic>.from(gatories.map((x) => x.toJson())),
  };
}

class Gatory {
  Gatory({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;

  factory Gatory.fromJson(Map<String, dynamic> json) => Gatory(
    id: json["id"],
    name: json["name"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
