import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'package:test1/leftside.dart';
import 'RAW/coloer/hex.dart';
import 'neworder.dart';
import 'package:test1/leftside.dart';


class testlayout extends StatefulWidget {
  @override
  _testlayout createState() => _testlayout();
}
class _testlayout extends State<testlayout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
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
                        //child: Text("boss"),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Flexible(
                      flex: 8,
                      fit: FlexFit.tight,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10,10,10,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0,10,0,10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),)
                                  ),
                                ),
                              ),
                              
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,0,10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),)
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),)
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    )
                   
                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
    
    
    
    
    
    }
  
  
  
  
  
  
  
  
  
  
  
  }