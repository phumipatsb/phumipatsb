import 'dart:convert';

CloseShift closeShiftFromJson(String str) => CloseShift.fromJson(json.decode(str));

String closeShiftToJson(CloseShift data) => json.encode(data.toJson());

class CloseShift {
    CloseShift({
        this.paymentCred,
        this.paymentFpan,
        this.paymentMkt,
        this.misc,
        this.discount,
        this.paymentSpoi,
        this.total,
        this.unfinishedOrders,
        this.serviceCharge,
        this.paymentRoom,
        this.paymentEnt,
        this.paymentCash,
        this.guest,
        this.finishedOrders,
        this.notes,
        this.subtotal,
        this.paymentAbf,
        this.paymentWong,
        this.paymentUbee,
        this.paymentLinm,
        this.paymentWalt,
        this.paymentProm,
        this.paymentOc,
        this.vat,
    });

    String? paymentCred;
    String? paymentFpan;
    String? paymentMkt;
    String? misc;
    String? discount;
    String? paymentSpoi;
    String? total;
    int? unfinishedOrders;
    String? serviceCharge;
    String? paymentRoom;
    String? paymentEnt;
    String? paymentCash;
    int? guest;
    int? finishedOrders;
    String? notes;
    String? subtotal;
    String? paymentAbf;
    String? paymentWong;
    String? paymentUbee;
    String? paymentLinm;
    String? paymentWalt;
    String? paymentProm;
    String? paymentOc;
    String? vat;

    factory CloseShift.fromJson(Map<String, dynamic> json) => CloseShift(
        paymentCred: json["payment_CRED"],
        paymentFpan: json["payment_FPAN"],
        paymentMkt: json["payment_MKT"],
        misc: json["misc"],
        discount: json["discount"],
        paymentSpoi: json["payment_SPOI"],
        total: json["total"],
        unfinishedOrders: json["unfinished_orders"],
        serviceCharge: json["service_charge"],
        paymentRoom: json["payment_ROOM"],
        paymentEnt: json["payment_ENT"],
        paymentCash: json["payment_CASH"],
        guest: json["guest"],
        finishedOrders: json["finished_orders"],
        notes: json["notes"],
        subtotal: json["subtotal"],
        paymentAbf: json["payment_ABF"],
        paymentWong: json["payment_WONG"],
        paymentUbee: json["payment_UBEE"],
        paymentLinm: json["payment_LINM"],
        paymentWalt: json["payment_WALT"],
        paymentProm: json["payment_PROM"],
        paymentOc: json["payment_OC"],
        vat: json["vat"],
    );

    Map<String, dynamic> toJson() => {
        "payment_CRED": paymentCred,
        "payment_FPAN": paymentFpan,
        "payment_MKT": paymentMkt,
        "misc": misc,
        "discount": discount,
        "payment_SPOI": paymentSpoi,
        "total": total,
        "unfinished_orders": unfinishedOrders,
        "service_charge": serviceCharge,
        "payment_ROOM": paymentRoom,
        "payment_ENT": paymentEnt,
        "payment_CASH": paymentCash,
        "guest": guest,
        "finished_orders": finishedOrders,
        "notes": notes,
        "subtotal": subtotal,
        "payment_ABF": paymentAbf,
        "payment_WONG": paymentWong,
        "payment_UBEE": paymentUbee,
        "payment_LINM": paymentLinm,
        "payment_WALT": paymentWalt,
        "payment_PROM": paymentProm,
        "payment_OC": paymentOc,
        "vat": vat,
    };
}