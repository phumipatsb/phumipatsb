import 'dart:convert';

List<TableList> tableListFromJson(String str) => List<TableList>.from(json.decode(str).map((x) => TableList.fromJson(x)));

String tableListToJson(List<TableList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TableList {
    TableList({
        this.items,
        this.id,
        this.zone,
    });

    List<Item>? items;
    String? id;
    String? zone;

    factory TableList.fromJson(Map<String, dynamic> json) => TableList(
        items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        id: json["id"],
        zone: json["zone"],
    );

    Map<String, dynamic> toJson() => {
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "id": id,
        "zone": zone,
    };
}

class Item {
    Item({
        this.name,
        this.id,
    });

    String? name;
    String? id;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
    };
}