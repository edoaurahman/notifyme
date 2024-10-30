// To parse this JSON data, do
//
//     final resi = resiFromJson(jsonString);

import 'dart:convert';

Resi resiFromJson(String str) => Resi.fromJson(json.decode(str));

String resiToJson(Resi data) => json.encode(data.toJson());

class Resi {
  String resi;
  String expedition;
  List<Detail> details;

  Resi({
    required this.resi,
    required this.expedition,
    required this.details,
  });

  factory Resi.fromJson(Map<String, dynamic> json) => Resi(
    resi: json["resi"],
    expedition: json["expedition"],
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "resi": resi,
    "expedition": expedition,
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detail {
  DateTime time;
  String message;

  Detail({
    required this.time,
    required this.message,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    time: DateTime.parse(json["time"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "time": time.toIso8601String(),
    "message": message,
  };
}
