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
  int? price;
  Productprice(
      {required categoriesproduct,
      required this.productname,
      required this.image,
      required this.price,
      required this.statusaddno
      
      });
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
  int price;
  String images;
  int amount = 1;
  List <addonofs>SubaddonChoice;
  tasks1({required this.name, required this.price, required this.images, required this.SubaddonChoice  });
}

class addonofs{
  String nameadd ;
  String subNameAddOn;
  double price;

  addonofs({required this.nameadd,required this.price,required this.subNameAddOn});

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

  addon({required this.nameaddon, required this.Subaddon,required this.checkboxstatus});
}

class SubAddOnDetail {
  String subNameAddOn;
  double priceAddOn;
  bool check_status;

  SubAddOnDetail({required this.subNameAddOn, required this.priceAddOn, required this.check_status});
}


