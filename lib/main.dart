import 'package:flutter/material.dart';
import 'material_new_order/menu_list.dart';
import 'material_new_order/leftside.dart';


import 'sumneworder.dart';


import 'testlayout.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phoenix App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        backgroundColor: Colors.pink[100],
      ) ,
      home: sumneworder(), 
    );
  }
  
}

