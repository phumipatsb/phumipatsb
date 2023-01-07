import 'package:flutter/material.dart';


class displayTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '''Table 01''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.2102272033691406,
        fontSize: 15.0,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}