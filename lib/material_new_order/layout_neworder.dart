import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/SideBar/leftside.dart';
import 'package:test1/check_void_Finished%20Bill/Create_Member.dart';
import 'package:test1/models/compronan.dart';
import 'package:test1/material_new_order/sumneworder.dart';
import 'package:test1/table/layout_table.dart';
import 'package:test1/table/table_Api.dart';
import '../models/provider_app.dart';
import 'package:responsive_framework/responsive_framework.dart';
class layout_neworder extends StatefulWidget {
  const layout_neworder({super.key});

  @override
  State<layout_neworder> createState() => _layout_neworderState();
}

class _layout_neworderState extends State<layout_neworder> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    int seindex = context.watch<provider_table>().sebar;
    return Scaffold(
      body: Container(
    
        child: Row(
          children: [
           
            Container(
              
              width: MediaQuery.of(context).size.width * 0.17,
              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: HexColor(backgroundColor),
                          ),
             child: leftside(),
            ),
            Container(
              
              width: MediaQuery.of(context).size.width * 0.0225,
              color: Colors.white,
            ),
           
           
            Container(
               width: MediaQuery.of(context).size.width * 0.8075,
              child: seindex == 0? 
              Container(child: table_api(),)
              : seindex ==1?Container(child: sumneworder(),)
              : seindex==2?Container(child: Text("3"),)
              : seindex==3?Container(child: Text("4"),)
              : seindex ==4?Container(child: Text("5"),)
              :Container(),
            )
           
            
          ],
        ),
      ),
    );
  }
}

