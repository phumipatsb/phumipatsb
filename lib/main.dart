import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/pull_from_api/provider_Api.dart';
import 'package:test1/table/new_table.dart';
import 'cash_out_shop/payment_page.dart';
import 'material_new_order/leftside.dart';
import 'package:test1/table/table.dart';
import 'sumneworder.dart';
import 'models/provider_app.dart';

import 'testlayout.dart';
import 'package:flutter/services.dart';

import 'ไฟล์เก่า/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => provider_app()),
        ChangeNotifierProvider(create: (_) => zoneName()),
        ChangeNotifierProvider(create: (_) => provider_payment()),
        ChangeNotifierProvider(create: (_) => provider_api()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: payment_page(),
                //new_table(),
          )),
    );
  }
}
