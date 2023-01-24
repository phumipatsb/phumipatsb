import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'material_new_order/leftside.dart';
import 'material_new_order/layout_item.dart';
import 'package:test1/table/table.dart';
import 'sumneworder.dart';
import 'models/provider_app.dart';
import 'models/provider_category.dart';
import 'testlayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => provider_app()),
        ChangeNotifierProvider(create: (_) => zoneName()),
        ChangeNotifierProvider(create: (_) => addOn()),
        ChangeNotifierProvider(create: (_) => Categories()),
      ],
      child: MaterialApp(
        home: table(),
      ),
    );
  }
}
