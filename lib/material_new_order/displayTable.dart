import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/provider_app.dart';


class displayTable extends StatelessWidget {
  
  //"${tasks[index].name}"
  @override
  Widget build(BuildContext context) {
    String zoneNameSelect = context.watch<provider_table>().zoneNameSelect;
    String SubZoneNameSelect1 =
        context.watch<provider_table>().subZoneNameSelect;
    //String = 
    return Row(
      children: [
        Text(
          ' ${zoneNameSelect}',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),

            /* letterSpacing: 0.0, */
          ),
        ),
        Text(
          ' ${SubZoneNameSelect1}',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),

            /* letterSpacing: 0.0, */
          ),
        ),
      ],
    );
  }
}