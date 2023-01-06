import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class neworder extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "ITEM NAME",
      "price": "\$255",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.fromLTRB(0, 0, 0, 799),
      width:  double.infinity,
      height:  289,
        child: Container(
            padding:  EdgeInsets.fromLTRB(0, 0, 0, 14),
        width:  double.infinity,
        height:  double.infinity,
        decoration:  BoxDecoration (
          color:  Color(0xffffdbdb),
          borderRadius:  BorderRadius.circular(10),
          border:  Border.all(color: Colors.black),
          
        ),
        child:  Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouppgbsAAC (TZYmrZeQdypNBgRqGiPgbS)
              padding:  EdgeInsets.fromLTRB(17, 9, 22, 0),
              width:  double.infinity,
              child: Column(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
            Container(
              // autogrouprrw45HA (TZYeShAM5ggF2xqVmYRrW4)
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
              width:  double.infinity,
              child:  
            Row(
              crossAxisAlignment:  CrossAxisAlignment.end,
              children:  [
            Container(
              // neworderPHr (10:6)
              margin:  EdgeInsets.fromLTRB(0, 0, 399, 0),
              child:  
            Text(
              'New Order',
              textDirection: TextDirection.ltr,
              style:  GoogleFonts.pacifico (
                
                fontSize:  20,
                fontWeight:  FontWeight.w400,
                height:  1.2125,
                color:  Color(0xff000000),
              ),
            ),
            ),
            Container(
              // autogroup3jsrH8L (TZYegMSFcwaCLfs1An3Jsr)
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 1),
              child:  
            Column(
              crossAxisAlignment:  CrossAxisAlignment.end,
              children:  [
            Container(
              // table01cgQ (10:76)
              margin:  EdgeInsets.fromLTRB(200, 0, 0, 3),
              child:  
            Text(
              'Table 01',
              style:  GoogleFonts.pacifico (
                
                fontSize:  15,
                fontWeight:  FontWeight.w400,
                height:  1.2125,
                color:  Color(0xff000000),
              ),
            ),
            ),
            Text(
              // december2022hhr (10:7)
              '20 December 2022',
              style:  GoogleFonts.pacifico (
                
                fontSize:  13,
                fontWeight:  FontWeight.w400,
                height:  1.2125,
                color:  Color(0xff000000),
              ),
            ),
              ],
            ),
            ),
              ],
            ),
            ),
            Container(
              // line41yS (10:10)
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
              width:  double.infinity,
              height:  1,
              decoration:  BoxDecoration (
                color:  Colors.pink[400],
              ),
            ),
              ],
            ),

            ),
            Container(
              // line1juS (10:8)
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 9),
              width:  double.infinity,
              height:  1,
              decoration:  BoxDecoration (
                color:  Color(0xffff6e6e),
              ),
            ),

            Container(
                // clearallfo6 (10:11)
                margin:  EdgeInsets.fromLTRB(0, 0, 75, 8),
                child:  
              Text(
                'Clear All',
                style:  GoogleFonts.pacifico (
                  
                  fontSize:  13,
                  fontWeight:  FontWeight.w400,
                  height:  1.2125,
                  decoration:  TextDecoration.underline,
                  color:  Color(0xffff6e6e),
                  decorationColor:  Color(0xffff6e6e),
                ),
              ),
              ),
            Container(
              // autogrouprbc4ZtU (TZYerr8mNm6D6gy7VLRbc4)
              margin:  EdgeInsets.fromLTRB(12, 0, 0, 0),
            width:  double.infinity,
            height:  186,






            child: Row(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children:[
                Container(
                  // frame4HpU (10:15)
                  margin:  EdgeInsets.fromLTRB(0, 0, 8, 0),
            width:  308,
            height:  double.infinity,

            
            child: GridView.builder(

                controller: _controller,

            shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        mainAxisExtent: 237,
        
      ),

          itemCount: gridMap.length,

          itemBuilder: (BuildContext context, int index) {
            return Container(
               decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16.0),
                    ),
            color: Colors.white,
          ),
          






          

            );
            }
            ) 
         


                )



              ]

            ),

            )




          ],


        ),

        ),
    );
    }
    }