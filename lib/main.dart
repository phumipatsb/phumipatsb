import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'material_new_order/leftside.dart';
import 'material_new_order/provider_app.dart';
import 'package:provider/provider.dart';
import 'sumneworder.dart';
import 'material_new_order/new_meun_list.dart';


import 'testlayout.dart';



void main() => runApp(MyApp());





class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) =>provider_app(),
      child: MaterialApp(
        
        
        
        home: sumneworder(), 
      ),
    );
  }
  
}

