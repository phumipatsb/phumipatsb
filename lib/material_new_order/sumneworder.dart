import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';

import '../SideBar/leftside.dart';
import '../RAW/coloer/hex.dart';
import 'package:sizer/sizer.dart';
import 'new_meun_list.dart';
import 'package:provider/provider.dart';
import '../CategoryMenu/CategoryMenu.dart';
import 'Sum_Layout_neworder.dart';

class sumneworder extends StatefulWidget {
  @override
  _sumneworder createState() => _sumneworder();
}

class _sumneworder extends State<sumneworder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Scaffold(
          body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: HexColor(backgroundColor)),
              child: testneworder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.0225,
              color: Colors.white,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: HexColor(backgroundColor)),
              child: CategoryMenu(),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.0225,
              color: Colors.white,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.53,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: HexColor(backgroundColor)),
              child: homepage(),
            ),
          ],
        ),
      )),
    );
  }
}
