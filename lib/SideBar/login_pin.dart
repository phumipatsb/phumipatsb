import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/utils/utils.dart';

import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import '../pull_from_api/provider_Api.dart';

class login_pin extends StatefulWidget {
  @override
  State<login_pin> createState() => _login_pinState();
}

class _login_pinState extends State<login_pin> {
  @override
  

  List pin = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  String passwork = "2543";
  String pincode = "";
  String name = "login";
  int pinnecond = 0;
  Widget build(BuildContext context) {
    final Model_list = Provider.of<ProviderApi_Staff_list>(context);

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
                  : Center(
                      child: Text("*" * pinnecond,
                          style: const TextStyle(
                              fontSize: 60,
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
                          mainAxisExtent: 95,
                        ),
                        itemCount: pin.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                addpin("${pin[index]}");

                                for (int i = 0;
                                    i <  Model_list.posts!.staffList!.length;
                                    i++) {
                                  if (pincode ==
                                       Model_list.posts!.staffList![i].password) {
                                    context
                                        .read<provider_login>()
                                        .updaet_status_login(true);
                                    context
                                        .read<provider_login>()
                                        .updaet_login_name(
                                            "${Model_list.posts!.staffList![i].name}");

                                    Navigator.pop(context);
                                  }
                                  pinnecond = pincode.length;
                                  // print("pinnecond" + pinnecond.toString());
                                }
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
                            height: 90,
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
                              for (int i = 0;
                                  i < Model_list.posts!.staffList!.length;
                                  i++) {
                                if (pincode == Model_list.posts!.staffList![i].password) {
                                  context
                                      .read<provider_login>()
                                      .updaet_status_login(true);
                                  context
                                      .read<provider_login>()
                                      .updaet_login_name(
                                          "${pincode == Model_list.posts!.staffList![i].name}");

                                  Navigator.pop(context);
                                } else {
                                  context
                                      .read<provider_login>()
                                      .updaet_status_login(false);
                                }
                              }
                              pinnecond = pincode.length;
                            });
                          },
                          child: Container(
                            height: 90,
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
                              height: 90,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void addpin(String pin) {
    pincode += pin;
    // print(pincode);
  }

  void clearpin() {
    pincode = pincode = '';
  }

  void deleteString() {
    if (pincode.length == 0 || pinnecond == 0) {
      return;
    }
    pincode = pincode.substring(0, pincode.length - 1);
    pinnecond--;
    // print(pincode);
  }
}
