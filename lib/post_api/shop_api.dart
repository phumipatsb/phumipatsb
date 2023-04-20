// To parse this JSON data, do
//
//     final shop = shopFromJson(jsonString);

import 'dart:convert';

Shop shopFromJson(String str) => Shop.fromJson(json.decode(str));

String shopToJson(Shop data) => json.encode(data.toJson());

class Shop {
  Shop({
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

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
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
    this.items,
    this.tableZone,
    this.tableName,
    this.tableSplit,
  });

  List<DataItem>? items;
  String? tableZone;
  String? tableName;
  int? tableSplit;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        items: json["items"] == null
            ? []
            : List<DataItem>.from(
                json["items"]!.map((x) => DataItem.fromJson(x))),
        tableZone: json["table_zone"],
        tableName: json["table_name"],
        tableSplit: json["table_split"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "table_zone": tableZone,
        "table_name": tableName,
        "table_split": tableSplit,
      };
}

class DataItem {
  DataItem({
    this.discountLabel,
    this.status,
    this.assignRoomNumber,
    this.items,
    this.price,
    this.note,
    this.discount,
    this.purchaseDate,
    this.guestAmount,
    this.billingId,
    this.subtotal,
    this.id,
  });

  String? discountLabel;
  String? status;
  String? assignRoomNumber;
  List<ItemItem>? items;
  int? price;
  String? note;
  int? discount;
  DateTime? purchaseDate;
  int? guestAmount;
  String? billingId;
  int? subtotal;
  String? id;

  factory DataItem.fromJson(Map<String, dynamic> json) => DataItem(
        discountLabel: json["discount_label"],
        status: json["status"],
        assignRoomNumber: json["assign_room_number"],
        items: json["items"] == null
            ? []
            : List<ItemItem>.from(
                json["items"]!.map((x) => ItemItem.fromJson(x))),
        price: json["price"],
        note: json["note"],
        discount: json["discount"],
        purchaseDate: json["purchase_date"] == null
            ? null
            : DateTime.parse(json["purchase_date"]),
        guestAmount: json["guest_amount"],
        billingId: json["billing_id"],
        subtotal: json["subtotal"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "discount_label": discountLabel,
        "status": status,
        "assign_room_number": assignRoomNumber,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "price": price,
        "note": note,
        "discount": discount,
        "purchase_date": purchaseDate?.toIso8601String(),
        "guest_amount": guestAmount,
        "billing_id": billingId,
        "subtotal": subtotal,
        "id": id,
      };
}

class ItemItem {
  ItemItem({
    this.optionOrder,
    this.code,
    this.option,
    this.price,
    this.priceOption,
    this.note,
    this.sensitive,
    this.amount,
    this.finalPrice,
    this.itemId,
    this.finalPriceOption,
    this.id,
    this.nameOrder,
    this.name,
  });

  String? optionOrder;
  String? code;
  String? option;
  int? price;
  String? priceOption;
  String? note;
  bool? sensitive;
  int? amount;
  int? finalPrice;
  String? itemId;
  String? finalPriceOption;
  String? id;
  String? nameOrder;
  String? name;

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        optionOrder: json["option_order"],
        code: json["code"],
        option: json["option"],
        price: json["price"],
        priceOption: json["price_option"],
        note: json["note"],
        sensitive: json["sensitive"],
        amount: json["amount"],
        finalPrice: json["final_price"],
        itemId: json["item_id"],
        finalPriceOption: json["final_price_option"],
        id: json["id"],
        nameOrder: json["name_order"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "option_order": optionOrder,
        "code": code,
        "option": option,
        "price": price,
        "price_option": priceOption,
        "note": note,
        "sensitive": sensitive,
        "amount": amount,
        "final_price": finalPrice,
        "item_id": itemId,
        "final_price_option": finalPriceOption,
        "id": id,
        "name_order": nameOrder,
        "name": name,
      };
}