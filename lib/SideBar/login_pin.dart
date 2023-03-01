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
  List pin = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  String pincode ="";
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
                          fontWeight: FontWeight.w500,
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
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: HexColor(lineColor)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: pincode.length == 0
                ? Center(
                    child: Text("Please enter your password",
                    style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black54)),
                  )
              
              :Center(
                child: Text("$pincode",
                    style: const TextStyle(
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 15,
                          mainAxisExtent: 80,
                        ),
                        itemCount: pin.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                print("${pin[index]}");
                                addpin("${pin[index]}");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: HexColor(lineColor)),
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                                color: HexColor(bgpin),
                              ),
                              child: Center(
                                child: Text("${pin[index]}",
                                    style: TextStyle(
                                        fontSize: 36,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ),
                            ),
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print("Clear");
                              clearpin();
                            });
                          },
                          child: Container(
                            height: 80,
                            width: 155,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: HexColor(lineColor)),
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: HexColor(textPriceColor),
                            ),
                            child: Center(
                              child: Text("Clear",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print("0");
                              addpin('0');
                            });
                          },
                          child: Container(
                            height: 80,
                            width: 155,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: HexColor(lineColor)),
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: HexColor(bgpin),
                            ),
                            child: Center(
                              child: Text("0",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                print("Delete");
                                deleteString();
                              });
                            },
                            child: Container(
                              height: 80,
                              width: 155,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: HexColor(lineColor)),
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                                color: HexColor(textPriceColor),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.backspace,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                        onPressed: () {
                          //Navigator.push(context,MaterialPageRoute(builder: (context) => confrim_order()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromARGB(255, 255, 111, 111), // background
                        ),
                        child: Text("Confirm",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void addpin(String pin){
    pincode += pin;
    print(pincode);

  }
  void clearpin(){
    pincode= pincode ='';
    
  }
  void deleteString(){
    if(pincode.length ==0){
      return;
    }
    pincode = pincode.substring(0, pincode.length -1);
    print(pincode);
  }

}
