import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/NewLayout/mainSceen.dart';
import 'package:test1/check_void_Finished%20Bill/check_page.dart';
import 'package:test1/table/layout_table.dart';
import 'package:test1/table/table_Api.dart';

import 'pull_from_api/provider_Api.dart';

import 'SideBar/Login.dart';
import 'cash_out_shop/payment_page.dart';
import 'SideBar/leftside.dart';

import 'material_new_order/sumneworder.dart';
import 'models/provider_app.dart';
import 'package:sizer/sizer.dart';
import 'ไฟล์เก่า/testlayout.dart';
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
        ChangeNotifierProvider(create: (_) => provider_payment()),
        ChangeNotifierProvider(create: (_) => provider_api_Manu()),
        ChangeNotifierProvider(create: (_) => provider_Language()),
        ChangeNotifierProvider(create: (_) => provider_login()),
        ChangeNotifierProvider(create: (_) => provider_api_table()),
        ChangeNotifierProvider(create: (_) => TableStatusProviderApi()),
        ChangeNotifierProvider(create: (_) => ProviderApi_Staff_list()),
        ChangeNotifierProvider(create: (_) => provider_table()),
        ChangeNotifierProvider(create: (_) => bill_list_ProviderApi()),
        ChangeNotifierProvider(create: (_) => close_shift_ProviderApi()),
        ChangeNotifierProvider(create: (_) => SelectMember()),
        ChangeNotifierProvider(create: (_) => newmember()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: //layout_table(),
              sumlayout(),
            ));
        }
      ),
    );
  }
}
