// To parse this JSON data, do
//
//     final tableStatusApi = tableStatusApiFromJson(jsonString);

import 'dart:convert';

TableStatusApi tableStatusApiFromJson(String str) =>
    TableStatusApi.fromJson(json.decode(str));

String tableStatusApiToJson(TableStatusApi data) => json.encode(data.toJson());

class TableStatusApi {
  TableStatusApi({
    this.status,
    this.updateHash,
    this.statusMsg,
    this.updateDatetime,
    this.datas,
  });

  int? status;
  String? updateHash;
  String? statusMsg;
  DateTime? updateDatetime;
  List<Data>? datas;

  factory TableStatusApi.fromJson(Map<String, dynamic> json) => TableStatusApi(
        status: json["status"],
        updateHash: json["update_hash"],
        statusMsg: json["status_msg"],
        updateDatetime: json["update_datetime"] == null
            ? null
            : DateTime.parse(json["update_datetime"]),
        datas: json["datas"] == null
            ? []
            : List<Data>.from(json["datas"]!.map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "update_hash": updateHash,
        "status_msg": statusMsg,
        "update_datetime": updateDatetime?.toIso8601String(),
        "datas": datas == null
            ? []
            : List<dynamic>.from(datas!.map((x) => x.toJson())),
      };
}

class Data {
  Data({
    this.status,
    this.discount,
    this.tableZone,
    this.total,
    this.room,
    this.discountLabel,
    this.totalOption,
    this.name,
    this.purchaseDateDatetime,
    this.discountOption,
    this.tableName,
    this.purchaseDate,
    this.billingId,
  });

  String? status;
  double? discount;
  String? tableZone;
  double? total;
  String? room;
  String? discountLabel;
  String? totalOption;
  String? name;
  DateTime? purchaseDateDatetime;
  String? discountOption;
  String? tableName;
  String? purchaseDate;
  String? billingId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: json["status"],
        discount: json["discount"],
        tableZone: json["table_zone"],
        total: json["total"],
        room: json["room"],
        discountLabel: json["discount_label"],
        totalOption: json["total_option"],
        name: json["name"],
        purchaseDateDatetime: json["purchase_date_datetime"] == null
            ? null
            : DateTime.parse(json["purchase_date_datetime"]),
        discountOption: json["discount_option"],
        tableName: json["table_name"],
        purchaseDate: json["purchase_date"],
        billingId: json["billing_id"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "discount": discount,
        "table_zone": tableZone,
        "total": total,
        "room": room,
        "discount_label": discountLabel,
        "total_option": totalOption,
        "name": name,
        "purchase_date_datetime": purchaseDateDatetime?.toIso8601String(),
        "discount_option": discountOption,
        "table_name": tableName,
        "purchase_date": purchaseDate,
        "billing_id": billingId,
      };
}
