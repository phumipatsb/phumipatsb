import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ProductData {
  final String name;
  final String image;
  final double price;

  ProductData({required this.name, required this.image, required this.price});

}
class ListCategory {
   String Categoryname;
   String Image;
   List<SubCategory> SubCateName1;
   ListCategory({required this.Image,required this.Categoryname, required this.SubCateName1});
}
class SubCategory{
  String SubCateName;
  List<ProductData> ItemCategory;
  SubCategory({required this.ItemCategory,required this.SubCateName});
}
