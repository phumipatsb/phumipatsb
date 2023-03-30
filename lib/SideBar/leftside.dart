import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/SideBar/language.dart';
import 'package:test1/check_void_Finished%20Bill/check_page.dart';
import 'package:test1/main_order/main_order.dart';
import 'package:test1/pull_from_api/linkApi.dart';
import 'package:test1/table/layout_table.dart';
import '../sumneworder.dart';

import '../table/table_Api.dart';
import 'Login.dart';

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

  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: HexColor(whiteColor),
                ),
                child: Login()),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 70,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: HexColor(whiteColor),
            ),
            child: Center(
              child: languagepd(),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
                itemCount: icon.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => layout_table()));  
                        }
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sumneworder())); 
                        }
                        if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => main_order()));
                        }
                        if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  check_page()));
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: index == selected
                              ? Colors.red[300]
                              : Colors.white,
                        ),
                        child: Icon(
                          icon[index],
                          color: index == selected
                              ? Colors.white
                              : Colors.red[300],
                          size: 44.0,
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
