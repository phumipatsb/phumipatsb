import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:test1/table/table_Api.dart';

import '../RAW/coloer/hex.dart';
import '../SideBar/leftside.dart';

import 'package:provider/provider.dart';

class layout_table extends StatefulWidget {
  @override
  _layout_table createState() => _layout_table();
}

class _layout_table extends State<layout_table> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  // ignore: sort_child_properties_last
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                        child: leftside(),
                      ),
                    ),
                    //Flexible(flex: 8, fit: FlexFit.tight, child: ListData()),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
