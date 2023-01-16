import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:test1/material_new_order/compronan.dart';

class Tandata extends GetxController{
 var caritem =<ProductSelect>[];

 List get boss => caritem;

@override



  addToCart(ProductSelect product) {
    caritem.add(product); // เมื่อมีเรียก addToCart ก็จะรับ product เข้ามาเพิ่มใน cartItems
    
  }

}