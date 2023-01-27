import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/provider_app.dart';


class displayTable extends StatelessWidget {
  
  //"${tasks[index].name}"
  @override
  Widget build(BuildContext context) {
    final zone = Provider.of<zoneName>(context);
    //String = 
    return Text(
      'Table ${zone.subZoneNameSelect}',
      
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