import 'package:flutter/material.dart';


class tasks1 {
  String name;
  num? price;
  String images;
  int amount = 1;
  String idItem;
  final List<addonofs> addonSelect;
  tasks1(
      {required this.name,
      required this.price,
      required this.images,
      required this.addonSelect,
      required this.idItem});
}

class addonofs {
  String nameaddon;
  String subNameAddOn;
  num price;
  String ID;
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








class send {
  int index1 = 0;
  int intdex2 = 0;
  send({required this.index1, required this.intdex2});
}

class Option {
  String? Choice;
  num? price;
  Option({required this.Choice, required this.price});
}



class mamber{
  String name;
  String telephone; 
  int Point;
  num IdMamber;
  mamber({required this.name ,required this.telephone,required this.Point,required this.IdMamber});
}


class Select_Member{
  String name = '';
  String telephone= ''; 
  int Point=0;
  String IdMamber = '';
  Select_Member({required this.name ,required this.telephone,required this.Point,required this.IdMamber});
}



class newmem_ber {
  String? gender;
  String name;
  String telephone= ''; 
  String date_of_birth;
 String email;
 String note;
  
  newmem_ber(
      {required this.name,
      required this.gender,
      required this.telephone,
      required this.date_of_birth,
      required this.email,
      required this.note});
}



class zoneList {
  String zone = "";
  String id = "";
  List<tableListNew> table = [];
  zoneList({required this.zone, required this.id, required this.table});
}

class tableListNew {
  String name = "";
  String id = "";
  List status = [];
  tableListNew({required this.name, required this.id, required this.status});
}