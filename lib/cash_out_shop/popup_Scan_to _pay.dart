import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/cash_out_shop/popup_Complete.dart';
import 'package:checkmark/checkmark.dart';
import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';

class popup_Scan_to_pay extends StatefulWidget {
  @override
  State<popup_Scan_to_pay> createState() => _popup_Scan_to_pay();
}

class _popup_Scan_to_pay extends State<popup_Scan_to_pay> {
  @override
  Widget build(BuildContext context) {
    var _sendTotal = context.watch<provider_payment>().sendTotal;
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                child: Text("Scan to Pay",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: HexColor(textpaymam))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.black12),
                child: Image.network(
                    'https://www.investopedia.com/thmb/LCLGYbEdJwzFQbTsFSDiM-hx42U=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/qr-code-bc94057f452f4806af70fd34540f72ad.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                child: Text("Total: $_sendTotal THB",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: HexColor(textpaymam))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Container(
                width: 308,
                height: 46,
                child: ElevatedButton(
                    onPressed: () {
                      var value = true;
                      // Navigator.pop(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => popup_Complete()));
                      setState(() {
                        if (value == true) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    content: Container(
                                  height: 600,
                                  width: 500,
                                  child: popup_Complete(),
                                ));
                              });
                          context.read<provider_payment>().updaet_st(value);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 111, 111), // background
                    ),
                    child: Text("Order",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
