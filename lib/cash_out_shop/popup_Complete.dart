import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:checkmark/checkmark.dart';
import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';

class popup_Complete extends StatefulWidget {
  @override
  State<popup_Complete> createState() => _popup_Complete();
}

class _popup_Complete extends State<popup_Complete> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    const Duration(milliseconds: 1000);
    bool st = context.watch<provider_payment>().stpy;

    initState() {
      if (st == true) {
        setState(() {
          print('dsdfdfdf');
        });
      }
    }

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Container(
                child: Text("Payment Complete",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: HexColor(textpaymam))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Container(
                  child: SizedBox(
                height: 300,
                width: 300,
                child: CheckMark(
                  active: chst(),
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 1000),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }

  chst() {
    return checked = true;
  }
}
