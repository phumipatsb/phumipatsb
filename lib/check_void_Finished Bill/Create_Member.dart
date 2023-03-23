import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';

class Create_Member extends StatefulWidget {
  @override
  State<Create_Member> createState() => _Create_MemberState();
}

class _Create_MemberState extends State<Create_Member> {
  TextEditingController nameController = TextEditingController();
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
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 125,
                                color: Colors.black,
                              ),
                              Container(
                                height: 200,
                                width: 125,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 350,
                          width: 400,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                    child: SvgPicture.asset(
                                      'assets/images/name.svg',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                  width: 350,
                                  height: 45,
                                  child: TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      hintText: 'Search member by name or telephone',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      filled: true,
                                      fillColor: Colors.white70,
                                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        borderSide: BorderSide(color: Colors.black45, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        borderSide: BorderSide(color: Colors.pink.shade300),
                                      ),
                                    ),
                                  ),
                                ),
                                  ],

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
}
