import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/material_new_order/backgrad.dart';
import '/material_new_order/layout1.dart';
import '/material_new_order/neworderwidget.dart';
import '/material_new_order/date_month_year.dart';
import '/material_new_order/dividing_line.dart';
import '/material_new_order/dividing_line2.dart';
import '/material_new_order/dividing_line3.dart';
import '/material_new_order/clear_all.dart';
import '/material_new_order/display_total.dart';
import '/material_new_order/display_price.dart';
import '/material_new_order/text_order.dart';
import '/material_new_order/displayTable.dart';
import '/material_new_order/list_view_order.dart';
import '/material_new_order/layout_item.dart';



class neworder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        border: Border.all(
          width: 1.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,

          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 680.0,
              height: 289.0,
              child: backgrad(),
            ),
            Positioned(
              left: 340.0,
              top: 219.0,
              right: null,
              bottom: null,
              width: 308.0,
              height: 48.0,
              child: layout1(),
            ),
            Positioned(
              left: 17.0,
              top: 23.0,
              right: null,
              bottom: null,
              width: 105.0,
              height: 26.0,
              child: NewOrderWidget(),
            ),
            Positioned(
              left: 519.0,
              top: 31.0,
              right: null,
              bottom: null,
              width: 121.0,
              height: 18.0,
              child: date_month_year(),
            ),
            Positioned(
              left: 0.0,
              top: 55.0,
              right: null,
              bottom: null,
              width: 660.0,
              height: 1.0,
              child: dividing_line1(),
            ),
            Positioned(
              left: 328.0,
              top: 203.0,
              right: null,
              bottom: null,
              width: 332.0,
              height: 1.0,
              child: dividing_line2(),
            ),
            Positioned(
              left: 328.0,
              top: 54.0,
              right: null,
              bottom: null,
              width: 235.0,
              height: 1.0,
              child: dividing_line3(),
            ),
            Positioned(
              left: 267.0,
              top: 65.0,
              right: null,
              bottom: null,
              width: 53.0,
              height: 18.0,
              child: Clear_All(),
            ),
            Positioned(
              left: 350.0,
              top: 90.0,
              right: null,
              bottom: null,
              width: 112.0,
              height: 91.0,
              child: display_total(),
            ),
            Positioned(
              left: 574.0,
              top: 89.0,
              right: null,
              bottom: null,
              width: 73.0,
              height: 94.0,
              child: display_price(),
            ),
            Positioned(
              left: 465.0,
              top: 231.0,
              right: null,
              bottom: null,
              width: 62.0,
              height: 29.0,
              child: text_order(),
            ),
            Positioned(
              left: 12.0,
              top: 89.0,
              right: null,
              bottom: null,
              width: 308.0,
              height: 186.0,
              child: layoutWidget(), //gigview
            ),
            Positioned(
              left: 578.0,
              top: 9.0,
              right: null,
              bottom: null,
              width: 62.0,
              height: 20.0,
              child: displayTable(),
            ),
            // Positioned(
            //   left: 0.0,
            //   top: 307.0,
            //   right: null,
            //   bottom: null,
            //   width: 660.0,
            //   height: 170.0,
            //   child: GeneratedCategoryWidget(),
            // )
          ]),
    );
  }
}