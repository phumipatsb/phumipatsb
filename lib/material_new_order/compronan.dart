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
  String name = '';
  String price = '';
  String image = '';
  int amount = 1;

  ProductSelect({required this.name, required this.price, required this.image});
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






