import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/confirm_order/material_comfirm_order/itemOutmanu.dart';
import 'package:test1/material_new_order/clear_all.dart';
import 'package:test1/material_new_order/leftside.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../material_new_order/date_month_year.dart';
import '../../material_new_order/displayTable.dart';
import '../../material_new_order/display_total.dart';
import '../../material_new_order/layout_item.dart';
import '../../material_new_order/neworderwidget.dart';



class newOrder_comfirm_order extends StatefulWidget {
  @override
  _newOrder_comfirm_order createState() => _newOrder_comfirm_order();
}

class _newOrder_comfirm_order extends State<newOrder_comfirm_order> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            
                          ),
                          child: Column(
                            children: [
                              Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                        //child: leftside(),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      SizedBox(height:5 ,),
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
                      ),
                    ),
                    Container(
                      child:const Divider(
                                                      height: 10,
                                                      thickness: 2,
                                                      indent: 0,
                                                      endIndent: 0,
                                                      color: Color.fromARGB(
                                                          255, 255, 110, 110),
                                                    ) ,
                    ),
                    SizedBox( height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          Container(
                            child: Clear_All(),
                          ),
                          SizedBox(width: 10,)
                        ],
                      ),
                    ),

                    Flexible(
                      flex: 11,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                          
                        ),
                        child: itemOutmanu(),
                       
                      ),
                    ),
                    Container(
                      child:const Divider(
                                                      height: 10,
                                                      thickness: 2,
                                                      indent: 0,
                                                      endIndent: 0,
                                                      color: Color.fromARGB(
                                                          255, 255, 110, 110),
                                                    ) ,
                    ),

                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                         child: Column(
                          children: [
                            Container(
                              child: display_total(),
                            ),
                            SizedBox(height: 10,),
                            Container(
                      child:const Divider(
                                                      height: 10,
                                                      thickness: 2,
                                                      indent: 0,
                                                      endIndent: 0,
                                                      color: Color.fromARGB(
                                                          255, 255, 110, 110),
                                                    ) ,
                    ),

                    Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Container(
                                width: 308,
                                                height: 46,
                                child: ElevatedButton(
                                                    onPressed: () {
                                                      //Navigator.push(context,MaterialPageRoute(builder: (context) => confrim_order()));
                                                    },
                                                    style:
                                                        ElevatedButton.styleFrom(
                                                      primary: Color.fromARGB(
                                                          255,
                                                          255,
                                                          111,
                                                          111), // background
                                                    ),
                                                    child: Text("Order",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white))),
                              ),
                            )

                          ],
                         ),
                       ),
                      ),
                    ),


                            ],
                          ),
                          
                        ),
                      ),
                    ),

                    
                    

        ],
      ),

    );
  }}