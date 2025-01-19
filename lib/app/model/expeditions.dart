import 'dart:convert';

Expeditions expeditionsFromJson(String str) => Expeditions.fromJson(json.decode(str));

String expeditionsToJson(Expeditions data) => json.encode(data.toJson());

class Expeditions {
  final List<Datum>? data;
  final String? message;
  final bool? success;

  Expeditions({
    this.data,
    this.message,
    this.success,
  });

  factory Expeditions.fromJson(Map<String, dynamic> json) => Expeditions(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    message: json["message"],
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
    "success": success,
  };
}

class Datum {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? trackingNum;
  final String? expedition;
  final String? status;
  final String? details;
  final String? email;

  Datum({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.trackingNum,
    this.expedition,
    this.status,
    this.details,
    this.email,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    trackingNum: json["TrackingNum"],
    expedition: json["Expedition"],
    status: json["Status"],
    details: json["Details"],
    email: json["Email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "TrackingNum": trackingNum,
    "Expedition": expedition,
    "Status": status,
    "Details": details,
    "Email": email,
  };
}
