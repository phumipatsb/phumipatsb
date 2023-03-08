// To parse this JSON data, do
//
//     final tableStatus = tableStatusFromJson(jsonString);

import 'dart:convert';

TableStatus tableStatusFromJson(String str) =>
    TableStatus.fromJson(json.decode(str));

String tableStatusToJson(TableStatus data) => json.encode(data.toJson());

class TableStatus {
  TableStatus({
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

  factory TableStatus.fromJson(Map<String, dynamic> json) => TableStatus(
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
    this.name,
    this.room,
    this.tableZone,
    this.tableName,
    this.captainCount,
    this.splitCount,
  });

  List<String>? status;
  String? name;
  String? room;
  String? tableZone;
  String? tableName;
  int? captainCount;
  int? splitCount;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: json["status"] == null
            ? []
            : List<String>.from(json["status"]!.map((x) => x)),
        name: json["name"],
        room: json["room"],
        tableZone: json["table_zone"],
        tableName: json["table_name"],
        captainCount: json["captain_count"],
        splitCount: json["split_count"],
      );

  Map<String, dynamic> toJson() => {
        "status":
            status == null ? [] : List<dynamic>.from(status!.map((x) => x)),
        "name": name,
        "room": room,
        "table_zone": tableZone,
        "table_name": tableName,
        "captain_count": captainCount,
        "split_count": splitCount,
      };

  where(bool Function(dynamic element) param0) {}
}
