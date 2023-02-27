import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';


import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/SideBar/leftside.dart';
import 'package:provider/provider.dart';

import '../models/provider_app.dart';
import '../sumneworder.dart';

class table extends StatefulWidget {
  @override
  _table createState() => _table();
}

class _table extends State<table> {
  

  @override
  Widget build(BuildContext context) {
    final subitem = [];
    List<dynamic> AddItem = [];
    int current = 0;
    final zone = Provider.of<zoneName>(context);
    //print(zone);
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
                  // ignore: sort_child_properties_last
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
                              child: Container(
                                 


                            padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.red[100]),
        width: 1000,
        height: 1200,
        child: Padding(padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: ListView.builder(
                    itemCount: zone.Zone.length, itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.red[200]),
                      child: Row(
                        children: [
                          Text('${zone.Zone[index].ZoneName}:',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                            maxLines: 1,),
                          SizedBox(width: 30,child:Container(color: Colors.white70),),
                          
                          Flexible(
                              flex: 3, fit: FlexFit.tight,
                              child: ListView.builder(
                                  itemCount: zone.Zone[index].SubZone.length,
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  itemBuilder: (context, index2) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => sumneworder()));

                                        var AddItem =context.read<zoneName>();
                                            AddItem.zoneNameSelect = zone.Zone[index].ZoneName;
                                            AddItem.subZoneNameSelect = zone.Zone[index].SubZone[index2].SubZoneName;
                                            print(AddItem.subZoneNameSelect);
                                        print(AddItem.zoneNameSelect);
                                        setState((){
                                        });
                                      },
                                      child: AnimatedContainer(
                                        height: 80,
                                        width: 80,
                                        duration: const Duration(
                                            milliseconds: 300),
                                        margin: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18),
                                            color:  ChangeColor(zone.Zone[index].SubZone[index2].Status) ),
                                        child: Center(
                                          child: Text(
                                              zone.Zone[index].SubZone[index2].SubZoneName,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,)
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                  )
                        ],
                      ),
                    );
                  },))
            ],
          ),
        )
                          )),
                        )),
                  ],
                  //mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
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