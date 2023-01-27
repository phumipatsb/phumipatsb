import 'package:flutter/material.dart';
import  'package:intl/intl.dart';

class date_month_year extends StatelessWidget {
  String cdate2 = DateFormat("dd  MMMM yyyy").format(DateTime.now());
  @override

  Widget build(BuildContext context) {
    return Text(
      '$cdate2',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.2102272327129657,
        fontSize: 15,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}