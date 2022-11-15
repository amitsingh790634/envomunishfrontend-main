// To parse this JSON data, do
//
//     final selectPoolModel = selectPoolModelFromJson(jsonString);

import 'dart:convert';

SelectPoolModel selectPoolModelFromJson(String str) => SelectPoolModel.fromJson(json.decode(str));

String selectPoolModelToJson(SelectPoolModel data) => json.encode(data.toJson());

class SelectPoolModel {
    SelectPoolModel({
      required  this.img,
      required  this.role,
    });

    String img;
    String role;

    factory SelectPoolModel.fromJson(Map<String, dynamic> json) => SelectPoolModel(
        img: json["img"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "img": img,
        "role": role,
    };
}
