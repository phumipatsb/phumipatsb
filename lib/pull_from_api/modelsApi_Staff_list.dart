// To parse this JSON data, do
//
//     final staffList = staffListFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

StaffList staffListFromJson(String str) => StaffList.fromJson(json.decode(str));

String staffListToJson(StaffList data) => json.encode(data.toJson());

class StaffList {
    StaffList({
        required this.staffList,
    });

    final List<StaffListElement> staffList;

    factory StaffList.fromJson(Map<String, dynamic> json) => StaffList(
        staffList: List<StaffListElement>.from(json["staff_list"].map((x) => StaffListElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "staff_list": List<dynamic>.from(staffList.map((x) => x.toJson())),
    };
}

class StaffListElement {
    StaffListElement({
        required this.branchId,
        required this.staffId,
        required this.permPrintCheck,
        required this.name,
        required this.permVoid,
        required this.permManageTable,
        required this.permMakeOrder,
        required this.permCashier,
        required this.password,
        required this.id,
        required this.permCloseShift,
        required this.permStock,
    });

    final String branchId;
    final String staffId;
    final bool permPrintCheck;
    final String name;
    final bool permVoid;
    final bool permManageTable;
    final bool permMakeOrder;
    final bool permCashier;
    final String password;
    final String id;
    final bool permCloseShift;
    final bool permStock;

    factory StaffListElement.fromJson(Map<String, dynamic> json) => StaffListElement(
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
