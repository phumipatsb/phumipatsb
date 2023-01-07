import 'package:flutter/material.dart';


class date_month_year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '''20 December 2022''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.2102272327129657,
        fontSize: 13.0,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}