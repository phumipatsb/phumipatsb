import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class list_view_order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 506.0,
              child: Stack(children: [
                Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 308.0,
                      height: 186.0,
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,

                          children: [
                            Positioned(
                              left: 0.0,
                              top: 0.0,
                              right: null,
                              bottom: null,
                              width: 308.0,
                              height: 74.0,
                              child: Text(
  'Clear All',
  style:  GoogleFonts.lato (
    
    fontSize:  13,
    fontWeight:  FontWeight.w400,
    height:  1.2125,
    decoration:  TextDecoration.underline,
    color:  Color(0xffff6e6e),
    decorationColor:  Color(0xffff6e6e),
  ),
),
                            ),
                            
                          ]),
                    ))
              ])),
        );
      }),
    );
  }
}