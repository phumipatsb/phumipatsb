import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';

import 'package:provider/provider.dart';
import 'package:test1/SideBar/leftside.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../RAW/coloer/hex.dart';

class check_page extends StatefulWidget {
  @override
  _check_page createState() => _check_page();
}

class _check_page extends State<check_page> {
  TextEditingController controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String fullName = '';
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("#00001",
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black)),
                                              Text("ZoneA A1",
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 10, 10),
                                                child: Container(
                                                  //child: neworder(),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                        child: Flexible(
                                                          flex: 1,
                                                          fit: FlexFit.tight,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                              
                                                            ),
                                                            child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                                                  child: Expanded(
                                                                    child: SvgPicture.asset('assets/images/Discount.svg', height: 25, width: 25,),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                  child: Text(
                                                                        "Discount",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .w500,
                                                                            color: Colors
                                                                                .black)),
                                                                ),
                                                      
                                                            ],
                                                          ),
                                                           
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        flex: 4,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                       0),
                                                            color: Colors.black,
                                                          ),
                                                         
                                                        ),
                                                      ),
                                                      Flexible(
                                                        flex: 2,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                        
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomLeft:
                                                                    Radius.circular(
                                                                        16),
                                                                bottomRight:
                                                                    Radius.circular(
                                                                        16)),
                                                      ),
                                                          child: Row(
                                                          children: [
                                                            Padding(
                                                                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                                                child: Container(
                                                                  child: SvgPicture.asset('assets/images/gift.svg', height: 35, width: 35,),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.fromLTRB(0, 5, 8, 0),
                                                                child: Container(
                                                                  height: 35,
                                                                  width: 225,
                                                                  child: TextField(
                                                                                controller: nameController,
                                                                                decoration: InputDecoration(
                                                                                  border: OutlineInputBorder(),
                                                                                  labelText: 'Gift Code',
                                                                                ),
                                                                                onChanged: (text) {
                                                                                  setState(() {
                                                                                    fullName = text;
                                                                                    //you can access nameController in its scope to get
                                                                                    // the value of text entered as shown below
                                                                                    //fullName = nameController.text;
                                                                                  });
                                                                                },
                                                                              )
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                                child: Container(
                                                                  child: SvgPicture.asset('assets/images/find.svg', height: 35, width: 35,),
                                                                ),
                                                              )
                                                          ],
                                                        ),
                                                         
                                                        ),
                                                      ),
                                                      

                                                      // Expanded(
                                                      //   child: Row(
                                                      //     children: [
                                                      //       Padding(
                                                      //           padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                                      //           child: Container(
                                                      //             child: SvgPicture.asset('assets/images/gift.svg', height: 35, width: 35,),
                                                      //           ),
                                                      //         ),
                                                      //         Container(
                                                      //           height: 50,
                                                      //           width: 200,
                                                      //           child: TextField(

                                                      //                               controller: textarea,
                                                      //                               keyboardType: TextInputType.multiline,
                                                      //                               maxLines: 4,
                                                      //                               decoration: InputDecoration(
                                                      //                                  hintText: "Enter Remarks",
                                                      //                                  focusedBorder: OutlineInputBorder(
                                                      //                                     borderSide: BorderSide(width: 1, color: Colors.redAccent)
                                                      //                                  )
                                                      //                               ),

                                                      //                            ),
                                                      //         ),
                                                      //     ],
                                                      //   ),
                                                      // )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 10),
                                                child: Container(
                                                  //child: neworder(),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        20,
                                                                        20,
                                                                        20,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Member.svg',
                                                                    height: 25,
                                                                    width: 25,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            20,
                                                                            10,
                                                                            0),
                                                                child: Text(
                                                                    "Member",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Colors
                                                                            .black)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 0, 20, 0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 80,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12),
                                                          alignment:
                                                              Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: HexColor(
                                                                    textPriceColor),
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  8.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Select_Member.svg',
                                                                    height: 40,
                                                                    width: 40,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  child: Text(
                                                                      "Select Member",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              Colors.black)),
                                                                ),
                                                              )
                                                            ],
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
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
                                              child: Flexible(
                                                                  flex: 2,
                                                                  fit: FlexFit.tight,
                                                                  child: Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(0),),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          width: 180,
                                                                          height: 67,
                                                                          decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(16),
                                                                      color: HexColor(Void)
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/void.svg',
                                                                    height: 40,
                                                                    width: 40,
                                                                  ),
                                                                        ),
                                                                        Container(
                                                                          child: Text(
                                                                      "Void",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              Colors.black)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                        ),
                                                                        SizedBox(width: 15,),
                                                                        Container(
                                                                          width: 180,
                                                                          height: 67,
                                                                          decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(16),
                                                                      color: HexColor(Check)
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/check.svg',
                                                                    height: 40,
                                                                    width: 40,
                                                                  ),
                                                                        ),
                                                                        Container(
                                                                          child: Text(
                                                                      "Check",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              Colors.black)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                        ),
                                                                        SizedBox(width: 15,),
                                                                        Container(
                                                                          width: 180,
                                                                          height: 67,
                                                                          decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(16),
                                                                      color: HexColor(Finished_Bill)
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Finished_Bill.svg',
                                                                    height: 40,
                                                                    width: 40,
                                                                  ),
                                                                        ),
                                                                        Container(
                                                                          child: Text(
                                                                      "Finished Bill",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              Colors.black)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                        )
                                            
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                            ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 570,
                            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black26
                          ),
                         child: Center(
                           child: Text(
                                                          "Close",
                                                          style: TextStyle(
                                                            fontSize:30,
                                                            fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                              color: Colors.black),
                                                          textAlign: TextAlign.center,
                                                        ),
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
