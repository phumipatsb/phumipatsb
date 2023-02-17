import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/pull_from_api/linkApi.dart';

class leftside extends StatefulWidget {
  @override
  _leftside createState() => _leftside();
}

class _leftside extends State<leftside> {
  List icon = [
    Icons.table_restaurant,
    Icons.shopping_cart_outlined,
    Icons.table_bar,
    Icons.delivery_dining,
    Icons.support_agent,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: icon.length,
        itemBuilder: (BuildContext context, int index) {
          
          return Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: HexColor(whiteColor),

              ),
              child: Icon(
                 icon[index],
                color: HexColor(iconColor),
                size: 44.0,

              ),
            ),
          );
        });
  }
}
