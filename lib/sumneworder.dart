import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'material_new_order/menu_list.dart';
import 'material_new_order/leftside.dart';
import 'RAW/coloer/hex.dart';
import 'material_new_order/neworder.dart';


class sumneworder extends StatefulWidget {
  @override
  _sumneworder createState() => _sumneworder();
}

class _sumneworder extends State<sumneworder> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return 
    Center(
      
      child: Container(
        
        
        child: Padding(
          
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                        child: leftside(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                          child: Padding(
                             padding: EdgeInsets.all(10.0),
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                    child: neworder(),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: HexColor(backgroundColor),
                                    ),
                                    
                                  ),
                                ),
                                
                              ),
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: HexColor(backgroundColor),
                                    ),
                                    //child: CategoryMenu(),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor(backgroundColor),
                                  ),
                                  child: homepage(),
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
    );
  }
}