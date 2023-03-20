import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';





import 'package:provider/provider.dart';
import 'package:test1/SideBar/leftside.dart';

import '../RAW/coloer/hex.dart';



class check_page extends StatefulWidget {
  @override
  _check_page createState() => _check_page();
}

class _check_page extends State<check_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          
      child: Container(
        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: HexColor(bgpin),
                        ),
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
                    // Flexible(
                    //   flex: 1,
                    //   fit: FlexFit.tight,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(16),
                    //       color: HexColor(backgroundColor),
                    //     ),
                    //     child: leftside(),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                          child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                                  "#00001",
                                                                  style: const TextStyle(
                                                                      fontSize: 20,
                                                                      fontFamily: 'Inter',
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Colors.black)),
                                                                      Text(
                                                                  "ZoneA A1",
                                                                  style: const TextStyle(
                                                                      fontSize: 20,
                                                                      fontFamily: 'Inter',
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Flexible(
                                    flex: 4,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          
                                        ),
                                        child: Row(
                                          children: [
                                            Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                                                    child: Icon(
                                                          Icons.person,
                                                          color: Colors.pink[200],
                                                          size: 45,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                                                    child: Text(
                                                                    "Member",
                                                                    style: const TextStyle(
                                                                        fontSize: 20,
                                                                        fontFamily: 'Inter',
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.black)),
                                                  ),
                                                ],
                                              ),
                                            ),

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

                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
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
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
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
                                        
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),

                                  
                                  
                                ],
                              )),
                        )),
                        
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
