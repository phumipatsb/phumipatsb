import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/utils/utils.dart';

import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';

class login_pin extends StatefulWidget {
  @override
  State<login_pin> createState() => _login_pinState();
}

class _login_pinState extends State<login_pin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: HexColor(textpaymam))),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black54,
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width:2,color: HexColor(lineColor)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text("1234",
            style: const TextStyle(
                fontSize: 25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                color: Colors.black)),
                ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 156,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: HexColor(bgpin),
                          ),
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 156,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: HexColor(bgpin),
                          ),
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 156,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: HexColor(bgpin),
                          ),
                          
                        ),
                      ),

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
