import 'package:flutter/material.dart';
import './homepage.dart';
import './leftside.dart';
import './GridViewPage.dart';
import './neworder.dart';
import 'sumneworder.dart';
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

