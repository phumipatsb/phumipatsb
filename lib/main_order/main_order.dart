import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:flutter/services.dart';

import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/material_new_order/leftside.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../material_new_order/date_month_year.dart';
import '../models/provider_app.dart';
import '../sumneworder.dart';

class main_order extends StatefulWidget {
  @override
  _main_order createState() => _main_order();
}

class _main_order extends State<main_order> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String cdate2 = DateFormat("dd  MMMM yyyy").format(DateTime.now());
    return Scaffold(
        body: Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Row(
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
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                            child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 5, 0),
                                          child: Container(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 146,
                                                  height: 43,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Color.fromARGB(
                                                            255,
                                                            255,
                                                            111,
                                                            111), // background
                                                      ),
                                                      child: Text("Open Draw",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors
                                                                  .white))),
                                                ),
                                                SizedBox(width: 10),
                                                Container(
                                                  width: 146,
                                                  height: 43,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return AlertDialog(
                                                                  content:
                                                                      Container(
                                                                height: 565,
                                                                width: 500,
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          486,
                                                                      height:
                                                                          38,
                                                                      child: ElevatedButton(
                                                                          onPressed: () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          style: ElevatedButton.styleFrom(
                                                                            primary: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                111,
                                                                                111), // background
                                                                          ),
                                                                          child: Text("Confirm", style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.white))),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          25,
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          480,
                                                                      height:
                                                                          500,
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                0,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Finished Orders", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("7", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                0,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Unfinished Orders", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("2", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(
                                                                            height:
                                                                                10,
                                                                            thickness:
                                                                                2,
                                                                            indent:
                                                                                0,
                                                                            endIndent:
                                                                                0,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Cash", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("1500", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Credit Card", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("1000", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Prompt Pay", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("1000", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Transfer", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const Divider(
                                                                            height:
                                                                                10,
                                                                            thickness:
                                                                                2,
                                                                            indent:
                                                                                0,
                                                                            endIndent:
                                                                                0,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Subtotal", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("3500", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Discount", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Service Charge", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Vat", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                Container(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text("Misc", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                  Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(height: 20,),
                                                                          Container(
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                SizedBox(
                                                                                  width: 136,
                                                                                  height: 34,
                                                                                  child: ElevatedButton(
                                                                                      onPressed: () {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      style: ElevatedButton.styleFrom(
                                                                                        primary: Color.fromARGB(255, 255, 111, 111), // background
                                                                                      ),
                                                                                      child: Text("Cancel", style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.white))),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 136,
                                                                                  height: 34,
                                                                                  child: ElevatedButton(
                                                                                      onPressed: () {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      style: ElevatedButton.styleFrom(
                                                                                        primary: Color.fromARGB(255, 255, 111, 111), // background
                                                                                      ),
                                                                                      child: Text("Confirm", style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.white))),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ));
                                                            });
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Color.fromARGB(
                                                            255,
                                                            255,
                                                            111,
                                                            111), // background
                                                      ),
                                                      child: Text("Close Shift",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors
                                                                  .white))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 15,
                                      fit: FlexFit.tight,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: HexColor(backgroundColor),
                                          ),
                                          child: Container(
                                            child: ListView.builder(
                                              shrinkWrap: false,
                                              itemCount: 10,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18),
                                                        color: Colors.white),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          10, 0, 30, 0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              "Zone A " + " A1",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .subtitle1!
                                                                  .merge(
                                                                    const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      child:
                                                                          Text(
                                                                    '$cdate2',
                                                                    overflow:
                                                                        TextOverflow
                                                                            .visible,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      height:
                                                                          1.2102272327129657,
                                                                      fontSize:
                                                                          20,
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),

                                                                      /* letterSpacing: 0.0, */
                                                                    ),
                                                                  )),
                                                                  Container(
                                                                    child: Text(
                                                                      "11.54 a.m.",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .subtitle1!
                                                                          .merge(
                                                                            const TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                    ),
                                                                  )
                                                                ]),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              "500",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .subtitle1!
                                                                  .merge(
                                                                    const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )))),
                  ],
                  //mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  ChangeColor(String status) {
    switch (status) {
      case 'Ordering':
        // print('Ordering');
        return Colors.yellow;
        break; // The switch statement must be told to exit, or it will execute every case.
      case 'Pay':
        // print('Pay');
        return Colors.blue;
        break;
      default:
        // print('');
        return Colors.white;
    }
  }
}
