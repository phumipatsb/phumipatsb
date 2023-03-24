import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import 'radio_sex.dart';

class Create_Member extends StatefulWidget {
  @override
  State<Create_Member> createState() => _Create_MemberState();
}

class _Create_MemberState extends State<Create_Member> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();


  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    // print(_groupValue);
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Text("Create New Member",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/close.svg',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              width: double.infinity,
              height: 420,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: HexColor(textPriceColor), width: 5),
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                              child: Container(
                                child: Row(
                                  children: [
                                    MyRadioOption<String>(
                                      value: 'male',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'A',
                                      text: 'One',
                                    ),
                                    MyRadioOption<String>(
                                      value: 'female',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'B',
                                      text: 'Two',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Container(
                                width: 120,
                                height: 190,
                                child: SvgPicture.asset(
                                  'assets/images/male_image.svg',
                                  width: 120,
                                  height: 190,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'assets/images/name.svg',
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Container(
                                        width: 350,
                                        height: 45,
                                        child: TextField(
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            filled: true,
                                            fillColor: Colors.white70,
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.black45,
                                                  width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.pink.shade300),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        child: SvgPicture.asset(
                                          'assets/images/Phone_Number.svg',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: 350,
                                          height: 45,
                                          child: TextField(
                                            controller: phoneController,
                                            decoration: InputDecoration(
                                              hintText: 'Phone Number',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              filled: true,
                                              fillColor: Colors.white70,
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.black45,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.pink.shade300),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
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

              // child: Row(
              //   children: [
              //     Expanded(child:Column(
              //       children: [

              //         Padding(
              //           padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              //           child: Container(
              //            child: Row(
              //             children: [
              //               MyRadioOption<String>(
              //                       value: 'male',
              //                       groupValue: _groupValue,
              //                       onChanged: _valueChangedHandler(),
              //                       label: 'A',
              //                       text: 'One',
              //                     ),
              //                     MyRadioOption<String>(
              //                       value: 'female',
              //                       groupValue: _groupValue,
              //                       onChanged: _valueChangedHandler(),
              //                       label: 'B',
              //                       text: 'Two',
              //                     ),
              //             ],
              //            ),
              //           ),
              //         ),
              //         Container(
              //           width: 98,
              //           height: 140,
              //          child: SvgPicture.asset(
              //             'assets/images/male_image.svg',
              //             height: 30,
              //             width: 30,
              //           ),
              //         )

              //       ],
              //     ) )
              //   ],
              // ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 73,
            padding: EdgeInsets.only(top: 18, bottom: 20),
            decoration: BoxDecoration(
              color: HexColor(confi),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32.0),
                  bottomRight: Radius.circular(32.0)),
            ),
            child: Text(
              "Confirm",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  // sexsvg(var i){
  //   if(i == "male")
  //   {
  //   return  Container(
  //     child: SvgPicture.asset(
  //                         'assets/images/male_image.svg',
  //                         height: 30,
  //                         width: 30,
  //                       ),

  //     );

  //   }
  //   else
  //   {
  //     return  Container(
  //       child: SvgPicture.asset(
  //                         'assets/images/woman_portrait.svg',
  //                         height: 30,
  //                         width: 30,
  //                       ),

  //     );

  //   }
  // }
}
