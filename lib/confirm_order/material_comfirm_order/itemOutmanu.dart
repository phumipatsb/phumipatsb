import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'package:test1/pull_from_api/orderlist.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';

import 'package:test1/material_new_order/compronan.dart';

import '../../models/provider_app.dart';
class itemOutmanu extends StatefulWidget {
  itemOutmanu({Key? key,}) : super(key: key);
  
  @override
  State<itemOutmanu> createState() => _itemOutmanuState();
}

class _itemOutmanuState extends State<itemOutmanu> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;
    
  
    return Container(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return tasks.length <= 0
            ? Center(
                child: Text(
                  '''NO ITEM''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.2102272327129657,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 110, 110),
                    decoration: TextDecoration.underline,
                    /* letterSpacing: 0.0, */
                  ),
                ),
              )
            : ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, int index) {
                  return Expanded(
                     
                     child: Row(
                      children: [
                        Container(
                          child:SizedBox(
                            height: double.maxFinite,
                            child: Text("data"),
                          ),
                        )
                      ],

                     ),
                        

                      );
                },
              );
      }),
    );
  }
}