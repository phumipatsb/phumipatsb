import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

import '../RAW/coloer/hex.dart';
import '../material_new_order/leftside.dart';
import '../models/provider_app.dart';
import '../sumneworder.dart';






class new_table extends StatefulWidget {
  @override
  _new_table createState() => _new_table();
}

class _new_table extends State<new_table> {
  
  @override
  Widget build(BuildContext context) {
    final subitem = [];
    List Order = ['Take Away', 'Q'];
    List<dynamic> AddItem = [];
    int current = 0;
    final zone = Provider.of<zoneName>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      )),
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
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 10,),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                               
                                child: Text("Queue:",
                                                      style: TextStyle(
                                                          fontSize: 35,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Colors.black))
                                
                              ),
                                
                              ),
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: ListView.builder(
                                  itemCount:Order.length, 
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        //Navigator.push(context,MaterialPageRoute(builder: (context) => sumneworder()));

                                        
                                        setState((){
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                                        child: AnimatedContainer(
                                          height: 100,
                                          width: 100,
                                          duration: const Duration(
                                              milliseconds: 300),
                                          margin: const EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color:  ChangeColor(zone.Zone[0].SubZone[index].Status) ),
                                          child: Center(
                                            child: Text(
                                                Order[index],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,)
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                )
                                
                                )

                            ],
                          ),
                        ),
                      ),

                                  ),
                                  SizedBox(height: 10,),
                                  Flexible(
                                    flex: 9,
                                    fit: FlexFit.tight,
                                    
                                      child: ListView.builder(
                                        itemCount: zone.Zone.length, itemBuilder: (context, index) {
                                          return SizedBox(
                                            
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(18),
                                                color: HexColor(backgroundColor),),
                                                child: Column(
                                                  
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Text(
                                                      '${zone.Zone[index].ZoneName}',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 35,
                                                          fontWeight: FontWeight.w700),
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 100,
                                                    width: 400,
                                                    padding: EdgeInsets.all(10),
                                                    child: GridView.builder(
                                itemCount: zone.Zone[index].SubZone.length,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        
                                        childAspectRatio: 3 / 2,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                        
                                itemBuilder: ((context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ChangeColor(zone
                                          .Zone[index].SubZone[index].Status),
                                    ),
                                    child: Center(
                                        child: Text(
                                            '${zone.Zone[index].SubZone[index].SubZoneName}')),
                                  );
                                })),
                                                  )

                                                  ],
                                                ),
                                              ),
                                            ),



                                          );
                                        }

                                      ),
                                      
                                      
                                      
                                      
                                      
                                    ),

                                  




                                ],


                              )
                        )
                        )

                    ),
                  ],
                ),
            )
          ],
          
        ),
      ),
    );

  }
  ChangeColor(String status){
    switch(status) {
      case 'Ordering':
        // print('Ordering');
        return Colors.yellow;
        break; // The switch statement must be told to exit, or it will execute every case.
      case'Pay':
        // print('Pay');
        return Colors.blue;
        break;
      default:
        // print('');
        return Colors.white;
    }
  }
  }