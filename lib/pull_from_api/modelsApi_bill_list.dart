// To parse this JSON data, do
//
//     final billList = billListFromJson(jsonString);

import 'dart:convert';

BillList billListFromJson(String str) => BillList.fromJson(json.decode(str));

String billListToJson(BillList data) => json.encode(data.toJson());

class BillList {
    BillList({
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

    factory BillList.fromJson(Map<String, dynamic> json) => BillList(
        status: json["status"],
        updateHash: json["update_hash"],
        statusMsg: json["status_msg"],
        updateDatetime: json["update_datetime"] == null ? null : DateTime.parse(json["update_datetime"]),
        datas: json["datas"] == null ? [] : List<Data>.from(json["datas"]!.map((x) => Data.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "update_hash": updateHash,
        "status_msg": statusMsg,
        "update_datetime": updateDatetime?.toIso8601String(),
        "datas": datas == null ? [] : List<dynamic>.from(datas!.map((x) => x.toJson())),
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

    Status? status;
    num? discount;
    String? tableZone;
    num? total;
    String? room;
    DiscountLabel? discountLabel;
    Option? totalOption;
    String? name;
    DateTime? purchaseDateDatetime;
    Option? discountOption;
    String? tableName;
    String? purchaseDate;
    String? billingId;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: statusValues.map[json["status"]]!,
        discount: json["discount"],
        tableZone: json["table_zone"],
        total: json["total"],
        room: json["room"],
        discountLabel: discountLabelValues.map[json["discount_label"]]!,
        totalOption: optionValues.map[json["total_option"]]!,
        name: json["name"],
        purchaseDateDatetime: json["purchase_date_datetime"] == null ? null : DateTime.parse(json["purchase_date_datetime"]),
        discountOption: optionValues.map[json["discount_option"]]!,
        tableName: json["table_name"],
        purchaseDate: json["purchase_date"],
        billingId: json["billing_id"],
    );

    Map<String, dynamic> toJson() => {
        "status": statusValues.reverse[status],
        "discount": discount,
        "table_zone": tableZone,
        "total": total,
        "room": room,
        "discount_label": discountLabelValues.reverse[discountLabel],
        "total_option": optionValues.reverse[totalOption],
        "name": name,
        "purchase_date_datetime": purchaseDateDatetime?.toIso8601String(),
        "discount_option": optionValues.reverse[discountOption],
        "table_name": tableName,
        "purchase_date": purchaseDate,
        "billing_id": billingId,
    };
}

enum DiscountLabel { EMPTY, DISCOUNT }

final discountLabelValues = EnumValues({
    "Discount": DiscountLabel.DISCOUNT,
    "": DiscountLabel.EMPTY
});

enum Option { CURRENCY_DECIMAL_COMMA }

final optionValues = EnumValues({
    "currency_decimal_comma": Option.CURRENCY_DECIMAL_COMMA
});

enum Status { ORD, FIN }

final statusValues = EnumValues({
    "FIN": Status.FIN,
    "ORD": Status.ORD
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
