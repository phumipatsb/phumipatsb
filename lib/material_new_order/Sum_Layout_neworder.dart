import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:hexcolor/hexcolor.dart';
import '../SideBar/login_pin.dart';
import '../confirm_order/confirm_order.dart';
import '../models/provider_app.dart';
import 'neworderwidget.dart';
import 'displayTable.dart';
import 'date_month_year.dart';
import 'clear_all.dart';
import 'neworder_page.dart';
import 'display_total.dart';
import 'package:test1/main_order/main_order.dart';

class testneworder extends StatefulWidget {
  @override
  _testneworder createState() => _testneworder();
}

class _testneworder extends State<testneworder> {
  @override
  Widget build(BuildContext context) {
    bool login_status = context.watch<provider_login>().status_login;
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 2, 5, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: NewOrderWidget(),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: displayTable(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: date_month_year(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.0115,
            child: Container(
              child: const Divider(
                height: 10,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Color.fromARGB(255, 255, 110, 110),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.188,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Clear_All(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.49,
                        height: MediaQuery.of(context).size.height * 0.17,
                        
                        child: layoutWidget(),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.010,
                  child: Container(
                    child: const VerticalDivider(
                      width: 10,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                      color: Color.fromARGB(255, 255, 110, 110),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.349,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 5, 15),
                        child: display_total(),
                      ),
                      Container(
                        child: const Divider(
                          
                          height: 10,
                          thickness: 2,
                          indent: 0,
                          endIndent: 0,
                          color: Color.fromARGB(255, 255, 110, 110),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.038,
                          child: ElevatedButton(
                            
                              onPressed: () {
                                setState(() {
                                  if (login_status == false) {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              content: Container(
                                            height: 600,
                                            width: 500,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: login_pin(),
                                          ));
                                        });
                                  } else {
                                    print("POST DATA API");
                                  }
                                });
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             confrim_order()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 255, 111, 111), // background
                              ),
                              child: Text("Confirm",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              50,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
