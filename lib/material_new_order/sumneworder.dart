import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';

import '../SideBar/leftside.dart';
import '../RAW/coloer/hex.dart';
import 'package:sizer/sizer.dart';
import 'new_meun_list.dart';
import 'package:provider/provider.dart';
import '../CategoryMenu/CategoryMenu.dart';
import 'Sum_Layout_neworder.dart';

class sumneworder extends StatefulWidget {
  @override
  _sumneworder createState() => _sumneworder();
}

class _sumneworder extends State<sumneworder> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    print(media.size);
    return Scaffold(
        body: Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  // ignore: sort_child_properties_last
                  children: [
                    
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                          child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        
                                        child: testneworder(),
                                        //child: neworder(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: HexColor(backgroundColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: HexColor(backgroundColor),
                                        ),
                                        child: CategoryMenu(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 7,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: HexColor(backgroundColor),
                                      ),
                                      child: homepage(), //link to neworder()
                                    ),
                                  )
                                ],
                              )),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
