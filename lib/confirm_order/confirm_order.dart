import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/material_new_order/clear_all.dart';
import 'package:test1/material_new_order/leftside.dart';
import 'package:provider/provider.dart';
import '../material_new_order/pop_up_add_on.dart';
import '../models/provider_app.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';

import 'material_comfirm_order/newOrder_comfirm_order.dart';



class confrim_order extends StatefulWidget {
  @override
  _confrim_order createState() => _confrim_order();
}

class _confrim_order extends State<confrim_order> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold( body:
    Center(
      
      child: Container(
        
        
        child: Padding(
          
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
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
                    SizedBox(width: 10,),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                          child: Padding(
                             padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 9,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                    child: newOrder_comfirm_order(),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),
                                    ),
                                    
                                  ),
                                ),
                                
                              ),
                              

                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                    
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),
                                    ),
                                    
                                  ),
                                ),
                                
                              ),
                              

                            ],

                              )
                              )
                              )
                              )




                  ]

                )
                )
                ]
                )
                )
                )
                ))
                ;
  }
  }