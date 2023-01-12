import 'dart:async';

class orderlist{
  String pix;
 String item;
 String price;



 orderlist(this.pix,this.item,this.price);





}

class Mapmanu{
 late final int? id;
 final String title;
 final int? price;
 final String images;


 

  
 
 Mapmanu ({
  required this.id,
  required this.title,
  required this.price,
  required this.images});

 

 
 Mapmanu.fromMap(Map<dynamic, dynamic>res)
  :id =res ['id'],
  title =res ['title'],
  price =res ['price'],
  images =res ['images'];


}


