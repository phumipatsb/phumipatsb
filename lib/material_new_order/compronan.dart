import 'package:flutter/material.dart';

class Itemcategory{
  String? name ;
  String? icon;
  List? categories;

  Itemcategory({required this.name ,required this.icon,required this.categories});
}

class Productprice {
  String? categoriesproduct;
  String? productname;
  String? image;
  int? price;
  Productprice(
      {required categoriesproduct ,required this.productname, required this.image, required this.price});

}


class ProductSelect {
  String? categoriesproduct;
  String? productname;
  String? image;
  int? price;
  ProductSelect(
      {required categoriesproduct ,required this.productname, required this.image, required this.price});
}


class provimenu{
 
 final String name;
 final int? price;
 final String images;


 

  
 
 provimenu ({
  
  required this.name,
  required this.price,
  required this.images});

 


 


}

class DynamicList {
  List<String> _list = [];
  DynamicList(this._list);

  List get list => _list;
}


class tasks1{

String name;
int price;
String images;
int amount = 1;
tasks1 ({
  
  required this.name,
  required this.price,
  required this.images});

}



