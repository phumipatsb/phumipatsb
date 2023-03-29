import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/provider_app.dart';

import '../RAW/coloer/hex.dart';
import '../sumneworder.dart';

class number_people extends StatefulWidget {
  const number_people({super.key});

  @override
  State<number_people> createState() => _number_peopleState();
}

class _number_peopleState extends State<number_people> {
  @override
  Widget build(BuildContext context) {
    String zoneNameSelect = context.watch<provider_table>().zoneNameSelect;
    String SubZoneNameSelect1 =context.watch<provider_table>().subZoneNameSelect;
    String select =context.watch<provider_table>().seNumberPeople;
    int NumberPeople = 10;
    
    

    return Container(
      child: Column(
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' ${zoneNameSelect}',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
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
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 0, 0, 0),

                        /* letterSpacing: 0.0, */
                      ),
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                        child: Container(
                          child: SvgPicture.asset(
                            'assets/images/Member.svg',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Container(
                            width: 300,
                            height: 40,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  String seNumberPeople ;

                                  return GestureDetector(
                                    onTap: () {
                                      context.read<provider_table>().NumberPeopleSelect(index.toString());
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: index % 2 == 0
                                              ? HexColor(file1)
                                              : HexColor(file2),
                                          borderRadius: BorderRadius.circular(0)),
                                      child: Center(
                                        child: Text("${index}",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  );
                                })),
                      )
                    ],
                  ),
                )),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print("boss:${select}");
                      if(select.isEmpty || select == "0"){
                        print("object");
                      }
                      else
                      {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sumneworder()));
                      }
                      
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 30,
                        width: 350,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: HexColor(lineColor)),
                          borderRadius: BorderRadius.circular(
                            32,
                          ),
                          color: HexColor(textPriceColor),
                        ),
                        child: Center(
                          child: Text("Order",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
