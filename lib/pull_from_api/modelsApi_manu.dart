import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.data,
    this.groupOptionList,
  });

  List<Datum>? data;
  Map<String, List<GroupOptionList>>? groupOptionList;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        groupOptionList: Map.from(json["group_option_list"]!).map((k, v) =>
            MapEntry<String, List<GroupOptionList>>(
                k,
                List<GroupOptionList>.from(
                    v.map((x) => GroupOptionList.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "group_option_list": Map.from(groupOptionList!).map((k, v) =>
            MapEntry<String, dynamic>(
                k, List<dynamic>.from(v.map((x) => x.toJson())))),
      };
}

class Datum {
  Datum({
    this.picture,
    this.name,
    this.items,
  });

  String? picture;
  String? name;
  List<DatumItem>? items;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        picture: json["picture"],
        name: json["name"],
        items: json["items"] == null
            ? []
            : List<DatumItem>.from(
                json["items"]!.map((x) => DatumItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "picture": picture,
        "name": name,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class DatumItem {
  DatumItem({
    this.items,
    this.name,
  });

  List<ItemItem>? items;
  String? name;

  factory DatumItem.fromJson(Map<String, dynamic> json) => DatumItem(
        items: json["items"] == null
            ? []
            : List<ItemItem>.from(
                json["items"]!.map((x) => ItemItem.fromJson(x))),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "name": name,
      };
}

class ItemItem {
  ItemItem({
    this.itemId,
    this.picture,
    this.price,
    this.itemGroupOptions,
    this.name,
  });

  String? itemId;
  String? picture;
  num? price;
  String? itemGroupOptions;
  String? name;

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        itemId: json["item_id"],
        picture: json["picture"],
        price: json["price"],
        itemGroupOptions: json["item_group_options"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "item_id": itemId,
        "picture": picture,
        "price": price,
        "item_group_options": itemGroupOptions,
        "name": name,
      };
}

class GroupOptionList {
  GroupOptionList({
    this.questionTh,
    this.items,
    this.questionCn,
    this.question,
    this.mode,
    this.active,
    this.defaultChoice,
    this.questionAr,
    this.questionJa,
    this.questionHu,
    this.questionEn,
  });

  String? questionTh;
  List<GroupOptionListItem>? items;
  String? questionCn;
  String? question;
  Mode? mode;
  bool? active;
  int? defaultChoice;
  String? questionAr;
  String? questionJa;
  String? questionHu;
  String? questionEn;

  factory GroupOptionList.fromJson(Map<String, dynamic> json) =>
      GroupOptionList(
        questionTh: json["question_th"],
        items: json["items"] == null
            ? []
            : List<GroupOptionListItem>.from(
                json["items"]!.map((x) => GroupOptionListItem.fromJson(x))),
        questionCn: json["question_cn"],
        question: json["question"],
        mode: modeValues.map[json["mode"]]!,
        active: json["active"],
        defaultChoice: json["default_choice"],
        questionAr: json["question_ar"],
        questionJa: json["question_ja"],
        questionHu: json["question_hu"],
        questionEn: json["question_en"],
      );

  Map<String, dynamic> toJson() => {
        "question_th": questionTh,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "question_cn": questionCn,
        "question": question,
        "mode": modeValues.reverse[mode],
        "active": active,
        "default_choice": defaultChoice,
        "question_ar": questionAr,
        "question_ja": questionJa,
        "question_hu": questionHu,
        "question_en": questionEn,
      };
}

class GroupOptionListItem {
  GroupOptionListItem({
    this.choiceTh,
    this.choiceCn,
    this.quantitySelectable,
    this.price,
    this.priceOption,
    this.active,
    this.choice,
    this.id,
    this.choiceHu,
    this.choiceJa,
    this.choiceEn,
  });

  String? choiceTh;
  String? choiceCn;
  bool? quantitySelectable;
  num? price;
  PriceOption? priceOption;
  bool? active;
  String? choice;
  String? id;
  String? choiceHu;
  String? choiceJa;
  String? choiceEn;

  factory GroupOptionListItem.fromJson(Map<String, dynamic> json) =>
      GroupOptionListItem(
        choiceTh: json["choice_th"],
        choiceCn: json["choice_cn"],
        quantitySelectable: json["quantity_selectable"],
        price: json["price"],
        priceOption: priceOptionValues.map[json["price_option"]]!,
        active: json["active"],
        choice: json["choice"],
        id: json["id"],
        choiceHu: json["choice_hu"],
        choiceJa: json["choice_ja"],
        choiceEn: json["choice_en"],
      );

  Map<String, dynamic> toJson() => {
        "choice_th": choiceTh,
        "choice_cn": choiceCn,
        "quantity_selectable": quantitySelectable,
        "price": price,
        "price_option": priceOptionValues.reverse[priceOption],
        "active": active,
        "choice": choice,
        "id": id,
        "choice_hu": choiceHu,
        "choice_ja": choiceJa,
        "choice_en": choiceEn,
      };
}

enum PriceOption { CURRENCY_NO_BAHT_SIGN_MAX_TWO_DECIMAL }

final priceOptionValues = EnumValues({
  "currency_no_baht_sign_max_two_decimal":
      PriceOption.CURRENCY_NO_BAHT_SIGN_MAX_TWO_DECIMAL
});

enum Mode { MUL, SIN }

final modeValues = EnumValues({"MUL": Mode.MUL, "SIN": Mode.SIN});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
