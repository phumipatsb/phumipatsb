// To parse this JSON data, do
//
//     final manu = manuFromJson(jsonString);

import 'dart:convert';

Manu manuFromJson(String str) => Manu.fromJson(json.decode(str));

String manuToJson(Manu data) => json.encode(data.toJson());

class Manu {
    Manu({
        this.data,
        this.groupOptionList,
    });

    List<Datum>? data;
    Map<String, List<GroupOptionList>>? groupOptionList;

    factory Manu.fromJson(Map<String, dynamic> json) => Manu(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        groupOptionList: Map.from(json["group_option_list"]!).map((k, v) => MapEntry<String, List<GroupOptionList>>(k, List<GroupOptionList>.from(v.map((x) => GroupOptionList.fromJson(x))))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "group_option_list": Map.from(groupOptionList!).map((k, v) => MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => x.toJson())))),
    };
}

class Datum {
    Datum({
        this.serviceTimeBegin2,
        this.serviceTimeBegin3,
        this.timeMinimumOperating,
        this.serviceTimeEnd,
        this.activeEmenu,
        this.isAllDay,
        this.id,
        this.pictureHash,
        this.serviceTimeBegin,
        this.guestRequestServeTime,
        this.detail,
        this.coverPictureHash,
        this.coverPicture,
        this.type,
        this.timeInterval,
        this.picture,
        this.serviceTimeEnd2,
        this.serviceTimeEnd3,
        this.name,
        this.whoCanSee,
        this.items,
        this.pictureThumbnailHash,
        this.orderListNote,
        this.pictureThumbnail,
        this.detailAr,
        this.detailCn,
        this.nameAuto,
        this.nameCn,
        this.nameTh,
        this.detailAuto,
        this.nameAr,
        this.detailJa,
        this.detailTh,
        this.nameJa,
    });

    String? serviceTimeBegin2;
    String? serviceTimeBegin3;
    String? timeMinimumOperating;
    String? serviceTimeEnd;
    bool? activeEmenu;
    bool? isAllDay;
    String? id;
    String? pictureHash;
    String? serviceTimeBegin;
    bool? guestRequestServeTime;
    Detail? detail;
    String? coverPictureHash;
    String? coverPicture;
    Type? type;
    String? timeInterval;
    String? picture;
    String? serviceTimeEnd2;
    String? serviceTimeEnd3;
    String? name;
    List<WhoCanSee>? whoCanSee;
    List<DatumItem>? items;
    String? pictureThumbnailHash;
    String? orderListNote;
    String? pictureThumbnail;
    String? detailAr;
    String? detailCn;
    String? nameAuto;
    String? nameCn;
    String? nameTh;
    String? detailAuto;
    String? nameAr;
    String? detailJa;
    String? detailTh;
    String? nameJa;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        serviceTimeBegin2: json["service_time_begin_2"],
        serviceTimeBegin3: json["service_time_begin_3"],
        timeMinimumOperating: json["time_minimum_operating"],
        serviceTimeEnd: json["service_time_end"],
        activeEmenu: json["active_emenu"],
        isAllDay: json["is_all_day"],
        id: json["id"],
        pictureHash: json["picture_hash"],
        serviceTimeBegin: json["service_time_begin"],
        guestRequestServeTime: json["guest_request_serve_time"],
        detail: detailValues.map[json["detail"]]!,
        coverPictureHash: json["cover_picture_hash"],
        coverPicture: json["cover_picture"],
        type: typeValues.map[json["type"]]!,
        timeInterval: json["time_interval"],
        picture: json["picture"],
        serviceTimeEnd2: json["service_time_end_2"],
        serviceTimeEnd3: json["service_time_end_3"],
        name: json["name"],
        whoCanSee: json["who_can_see"] == null ? [] : List<WhoCanSee>.from(json["who_can_see"]!.map((x) => WhoCanSee.fromJson(x))),
        items: json["items"] == null ? [] : List<DatumItem>.from(json["items"]!.map((x) => DatumItem.fromJson(x))),
        pictureThumbnailHash: json["picture_thumbnail_hash"],
        orderListNote: json["order_list_note"],
        pictureThumbnail: json["picture_thumbnail"],
        detailAr: json["detail_ar"],
        detailCn: json["detail_cn"],
        nameAuto: json["name_auto"],
        nameCn: json["name_cn"],
        nameTh: json["name_th"],
        detailAuto: json["detail_auto"],
        nameAr: json["name_ar"],
        detailJa: json["detail_ja"],
        detailTh: json["detail_th"],
        nameJa: json["name_ja"],
    );

    Map<String, dynamic> toJson() => {
        "service_time_begin_2": serviceTimeBegin2,
        "service_time_begin_3": serviceTimeBegin3,
        "time_minimum_operating": timeMinimumOperating,
        "service_time_end": serviceTimeEnd,
        "active_emenu": activeEmenu,
        "is_all_day": isAllDay,
        "id": id,
        "picture_hash": pictureHash,
        "service_time_begin": serviceTimeBegin,
        "guest_request_serve_time": guestRequestServeTime,
        "detail": detailValues.reverse[detail],
        "cover_picture_hash": coverPictureHash,
        "cover_picture": coverPicture,
        "type": typeValues.reverse[type],
        "time_interval": timeInterval,
        "picture": picture,
        "service_time_end_2": serviceTimeEnd2,
        "service_time_end_3": serviceTimeEnd3,
        "name": name,
        "who_can_see": whoCanSee == null ? [] : List<dynamic>.from(whoCanSee!.map((x) => x.toJson())),
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "picture_thumbnail_hash": pictureThumbnailHash,
        "order_list_note": orderListNote,
        "picture_thumbnail": pictureThumbnail,
        "detail_ar": detailAr,
        "detail_cn": detailCn,
        "name_auto": nameAuto,
        "name_cn": nameCn,
        "name_th": nameTh,
        "detail_auto": detailAuto,
        "name_ar": nameAr,
        "detail_ja": detailJa,
        "detail_th": detailValues.reverse[detailTh],
        "name_ja": nameJa,
    };
}

enum Detail { EMPTY, DETAIL, PURPLE }

final detailValues = EnumValues({
    " ": Detail.DETAIL,
    "": Detail.EMPTY,
    "  ": Detail.PURPLE
});

class DatumItem {
    DatumItem({
        this.items,
        this.order,
        this.name,
        this.id,
        this.nameAr,
        this.nameCn,
        this.nameTh,
        this.nameJa,
    });

    List<ItemItem>? items;
    int? order;
    String? name;
    String? id;
    String? nameAr;
    String? nameCn;
    String? nameTh;
    String? nameJa;

    factory DatumItem.fromJson(Map<String, dynamic> json) => DatumItem(
        items: json["items"] == null ? [] : List<ItemItem>.from(json["items"]!.map((x) => ItemItem.fromJson(x))),
        order: json["order"],
        name: json["name"],
        id: json["id"],
        nameAr: json["name_ar"],
        nameCn: json["name_cn"],
        nameTh: json["name_th"],
        nameJa: json["name_ja"],
    );

    Map<String, dynamic> toJson() => {
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "order": order,
        "name": name,
        "id": id,
        "name_ar": nameAr,
        "name_cn": nameCn,
        "name_th": nameTh,
        "name_ja": nameJa,
    };
}

class ItemItem {
    ItemItem({
        this.code,
        this.memberPoint,
        this.detailAr,
        this.detailCn,
        this.pictureWidth,
        this.specialHeaderText,
        this.chiliLevel,
        this.finalPriceOption,
        this.id,
        this.pictureColor,
        this.pictureHash,
        this.nameCn,
        this.detail,
        this.nameTh,
        this.finalPrice,
        this.price,
        this.picture,
        this.nameAr,
        this.priceOption,
        this.itemId,
        this.salePercentOff,
        this.pricePerWeight,
        this.name,
        this.pictureHeight,
        this.detailTh,
        this.calories,
        this.itemGroupOptions,
        this.detailJa,
        this.nameJa,
        this.nameHu,
        this.detailHu,
        this.detailKo,
        this.nameKo,
    });

    String? code;
    num? memberPoint;
    String? detailAr;
    String? detailCn;
    int? pictureWidth;
    SpecialHeaderText? specialHeaderText;
    int? chiliLevel;
    PriceOption? finalPriceOption;
    String? id;
    String? pictureColor;
    String? pictureHash;
    String? nameCn;
    String? detail;
    String? nameTh;
    double? finalPrice;
    num? price;
    String? picture;
    String? nameAr;
    PriceOption? priceOption;
    String? itemId;
    String? salePercentOff;
    PricePerWeight? pricePerWeight;
    String? name;
    int? pictureHeight;
    String? detailTh;
    int? calories;
    String? itemGroupOptions;
    String? detailJa;
    String? nameJa;
    String? nameHu;
    String? detailHu;
    String? detailKo;
    String? nameKo;

    factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        code: json["code"],
        memberPoint: json["member_point"],
        detailAr: json["detail_ar"],
        detailCn: json["detail_cn"],
        pictureWidth: json["picture_width"],
        specialHeaderText: specialHeaderTextValues.map[json["special_header_text"]]!,
        chiliLevel: json["chili_level"],
        finalPriceOption: priceOptionValues.map[json["final_price_option"]]!,
        id: json["id"],
        pictureColor: json["picture_color"],
        pictureHash: json["picture_hash"],
        nameCn: json["name_cn"],
        detail: json["detail"],
        nameTh: json["name_th"],
        finalPrice: json["final_price"]?.toDouble(),
        price: json["price"],
        picture: json["picture"],
        nameAr: json["name_ar"],
        priceOption: priceOptionValues.map[json["price_option"]]!,
        itemId: json["item_id"],
        salePercentOff: json["sale_percent_off"],
        pricePerWeight: pricePerWeightValues.map[json["price_per_weight"]]!,
        name: json["name"],
        pictureHeight: json["picture_height"],
        detailTh: json["detail_th"],
        calories: json["calories"],
        itemGroupOptions: json["item_group_options"],
        detailJa: json["detail_ja"],
        nameJa: json["name_ja"],
        nameHu: json["name_hu"],
        detailHu: json["detail_hu"],
        detailKo: json["detail_ko"],
        nameKo: json["name_ko"],
    );

    Map<String, dynamic> toJson() => {
        "code": detailValues.reverse[code],
        "member_point": memberPoint,
        "detail_ar": detailAr,
        "detail_cn": detailCn,
        "picture_width": pictureWidth,
        "special_header_text": specialHeaderTextValues.reverse[specialHeaderText],
        "chili_level": chiliLevel,
        "final_price_option": priceOptionValues.reverse[finalPriceOption],
        "id": id,
        "picture_color": pictureColor,
        "picture_hash": pictureHash,
        "name_cn": nameCn,
        "detail": detail,
        "name_th": nameTh,
        "final_price": finalPrice,
        "price": price,
        "picture": picture,
        "name_ar": nameAr,
        "price_option": priceOptionValues.reverse[priceOption],
        "item_id": itemId,
        "sale_percent_off": salePercentOff,
        "price_per_weight": pricePerWeightValues.reverse[pricePerWeight],
        "name": name,
        "picture_height": pictureHeight,
        "detail_th": detailTh,
        "calories": calories,
        "item_group_options": itemGroupOptions,
        "detail_ja": detailJa,
        "name_ja": nameJa,
        "name_hu": nameHu,
        "detail_hu": detailHu,
        "detail_ko": detailKo,
        "name_ko": nameKo,
    };
}

enum PriceOption { CURRENCY_NO_BAHT_SIGN_MAX_TWO_DECIMAL }

final priceOptionValues = EnumValues({
    "currency_no_baht_sign_max_two_decimal": PriceOption.CURRENCY_NO_BAHT_SIGN_MAX_TWO_DECIMAL
});

enum PricePerWeight { OFF, ON }

final pricePerWeightValues = EnumValues({
    "OFF": PricePerWeight.OFF,
    "ON": PricePerWeight.ON
});

enum SpecialHeaderText { EMPTY, THE_5_OFF, THE_20_OFF }

final specialHeaderTextValues = EnumValues({
    "": SpecialHeaderText.EMPTY,
    "20% off": SpecialHeaderText.THE_20_OFF,
    "5% off": SpecialHeaderText.THE_5_OFF
});

enum Type { S }

final typeValues = EnumValues({
    "S": Type.S
});

class WhoCanSee {
    WhoCanSee({
        this.name,
    });

    Name? name;

    factory WhoCanSee.fromJson(Map<String, dynamic> json) => WhoCanSee(
        name: nameValues.map[json["name"]]!,
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
    };
}

enum Name { STAFF, GUEST }

final nameValues = EnumValues({
    "Guest": Name.GUEST,
    "Staff": Name.STAFF
});

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

    factory GroupOptionList.fromJson(Map<String, dynamic> json) => GroupOptionList(
        questionTh: json["question_th"],
        items: json["items"] == null ? [] : List<GroupOptionListItem>.from(json["items"]!.map((x) => GroupOptionListItem.fromJson(x))),
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
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "question_cn": questionCn,
        "question": question,
        "mode": modeValues.reverse[mode],
        "active": active,
        "default_choice": defaultChoice,
        "question_ar": questionArValues.reverse[questionAr],
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

    factory GroupOptionListItem.fromJson(Map<String, dynamic> json) => GroupOptionListItem(
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

enum Mode { MUL, SIN }

final modeValues = EnumValues({
    "MUL": Mode.MUL,
    "SIN": Mode.SIN
});

enum QuestionAr { EMPTY, QUESTION_AR, PURPLE }

final questionArValues = EnumValues({
    "شوت قهوة": QuestionAr.EMPTY,
    "يبعد": QuestionAr.PURPLE,
    "المستوى الحلو:": QuestionAr.QUESTION_AR
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
