// To parse this JSON data, do
//
//     final staffList = staffListFromJson(jsonString);

import 'dart:convert';

List<StaffList> staffListFromJson(String str) =>
    List<StaffList>.from(json.decode(str).map((x) => StaffList.fromJson(x)));

String staffListToJson(List<StaffList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StaffList {
  StaffList({
    this.branchId,
    this.staffId,
    this.permPrintCheck,
    this.name,
    this.permVoid,
    this.permManageTable,
    this.permMakeOrder,
    this.permCashier,
    this.password,
    this.id,
    this.permCloseShift,
    this.permStock,
  });

  String? branchId;
  String? staffId;
  bool? permPrintCheck;
  String? name;
  bool? permVoid;
  bool? permManageTable;
  bool? permMakeOrder;
  bool? permCashier;
  String? password;
  String? id;
  bool? permCloseShift;
  bool? permStock;

  factory StaffList.fromJson(Map<String, dynamic> json) => StaffList(
        branchId: json["branch_id"],
        staffId: json["staff_id"],
        permPrintCheck: json["perm_print_check"],
        name: json["name"],
        permVoid: json["perm_void"],
        permManageTable: json["perm_manage_table"],
        permMakeOrder: json["perm_make_order"],
        permCashier: json["perm_cashier"],
        password: json["password"],
        id: json["id"],
        permCloseShift: json["perm_close_shift"],
        permStock: json["perm_stock"],
      );

  Map<String, dynamic> toJson() => {
        "branch_id": branchId,
        "staff_id": staffId,
        "perm_print_check": permPrintCheck,
        "name": name,
        "perm_void": permVoid,
        "perm_manage_table": permManageTable,
        "perm_make_order": permMakeOrder,
        "perm_cashier": permCashier,
        "password": password,
        "id": id,
        "perm_close_shift": permCloseShift,
        "perm_stock": permStock,
      };
}
