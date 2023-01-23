import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider_app.dart';

/* Text Clear All
    Autogenerated by FlutLab FTF Generator
  */
class Clear_All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<provider_app>().clearAllOrder();
        
      },
      child: Text(
        '''Clear All''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.2102272327129657,
          fontSize: 13.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 110, 110),
          decoration: TextDecoration.underline,
          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
