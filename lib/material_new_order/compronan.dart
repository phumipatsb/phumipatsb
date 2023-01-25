import 'package:flutter/material.dart';

class Itemcategory {
  String? name;
  String? icon;
  List? categories;

  Itemcategory(
      {required this.name, required this.icon, required this.categories});
}

class Productprice {
  String? categoriesproduct;
  String? productname;
  String? image;
  int? price;
  Productprice(
      {required categoriesproduct,
      required this.productname,
      required this.image,
      required this.price});
}

class ProductSelect {
  String name = '';
  int? price;
  String image = '';
  int amount = 1;

  ProductSelect({required this.name, required this.price, required this.image});
}

class provimenu {
  final String name;
  final int? price;
  final String images;

  provimenu({required this.name, required this.price, required this.images});
}

class DynamicList {
  List<String> _list = [];
  DynamicList(this._list);

  List get list => _list;
}

class tasks1 {
  String name;
  int price;
  String images;
  int amount = 1;
  tasks1({required this.name, required this.price, required this.images});
}

class tasks {
  String name;
  int price;
  String images;
  int amount = 1;
  tasks({required this.name, required this.price, required this.images});
}

class zone {
  final String ZoneName;
  final List<SubZoneDetail> SubZone;

  zone({required this.ZoneName, required this.SubZone});
}

class SubZoneDetail {
  String SubZoneName;
  String Status;

  SubZoneDetail({required this.SubZoneName, required this.Status});
}

class selectzone {
  final String ZoneName;
  final String SubZone;

  selectzone({required this.ZoneName, required this.SubZone});
}

class addon {
  final String nameaddon;
  final List<SubAddOnDetail> Subaddon;

  addon({required this.nameaddon, required this.Subaddon});
}

class SubAddOnDetail {
  String subNameAddOn;
  double priceAddOn;
  bool check_status;

  SubAddOnDetail({required this.subNameAddOn, required this.priceAddOn, required this.check_status});
}


