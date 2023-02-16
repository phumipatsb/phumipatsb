import 'package:flutter/material.dart';

// class Itemcategory {
//   String? name;
//   String? icon;
//   List? categories;

//   Itemcategory(
//       {required this.name, required this.icon, required this.categories});
// }

class Productprice {
  bool statusaddno;
  String? categoriesproduct;
  String? productname;
  String? image;
  double? price;
  Productprice(
      {required categoriesproduct,
      required this.productname,
      required this.image,
      required this.price,
      required this.statusaddno});
}

// class ProductSelect {
//   String name = '';
//   int? price;
//   String image = '';
//   int amount = 1;

//   ProductSelect({required this.name, required this.price, required this.image});
// }

// class provimenu {
//   final String name;
//   final int? price;
//   final String images;

//   provimenu({required this.name, required this.price, required this.images});
// }

class tasks1 {
  String name;
  double price;
  String images;
  int amount = 1;
  final List<addonofs> addonSelect;
  tasks1(
      {required this.name,
      required this.price,
      required this.images,
      required this.addonSelect});
}

class addonofs {
  String nameaddon;
  String subNameAddOn;
  double price;
  int ID;
  addonofs(
      {required this.price,
      required this.subNameAddOn,
      required this.nameaddon,
      required this.ID});
}

class addOnse {
  final List<addonofs1> addonse;
  addOnse({required this.addonse});
}

class addonofs1 {
  String nameaddon;
  String subNameAddOn;
  double price;
  int ID;
  addonofs1(
      {required this.price,
      required this.subNameAddOn,
      required this.nameaddon,
      required this.ID});
}

// class tasks {
//   String name;
//   int price;
//   String images;
//   int amount = 1;
//   List addonst =[];
//   tasks({required this.name, required this.price, required this.images,required this.addonst});
// }

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
  final bool checkboxstatus;
  final List<SubAddOnDetail> Subaddon;

  addon(
      {required this.nameaddon,
      required this.Subaddon,
      required this.checkboxstatus});
}

class SubAddOnDetail {
  String subNameAddOn;
  double priceAddOn;
  bool check_status;
  int ID;

  SubAddOnDetail(
      {required this.subNameAddOn,
      required this.priceAddOn,
      required this.check_status,
      required this.ID});
}


class selectaf{
  List<send> selectafdata ;
  selectaf({required this.selectafdata});
}

class send{
  
  int  index1;
  int  intdex2;
  send({required this.index1, required this.intdex2});
}





