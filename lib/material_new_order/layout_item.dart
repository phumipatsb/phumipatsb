import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'package:test1/pull_from_api/orderlist.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';

import 'package:test1/material_new_order/compronan.dart';

import '../../models/provider_app.dart';

class layoutWidget extends StatefulWidget {
  layoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<layoutWidget> createState() => _layoutWidgetState();
}

class _layoutWidgetState extends State<layoutWidget> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;

    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Container(
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
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(8,0, 8, 0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                                          child: Container(
                                            height: 55,
                                            width: 55,
                                             decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10.0),
                                                  ),
                                                   child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft: Radius.circular(16.0),
                                                      topRight: Radius.circular(16.0),
                                                      bottomLeft: Radius.circular(16.0),
                                                      bottomRight: Radius.circular(16.0),
                                                    ),
                                                    child: Image.network(
                                                      tasks[index].images,
                                                      
                                                      width: double.infinity,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0,0, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Padding(
                                                
                                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                child: Container(
                                                  width: 71.2,
                                                  
                                                  child: Text(
                                                          "${tasks[index].name}",
                                                          overflow: TextOverflow.ellipsis,
                                                          maxLines: 1,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .subtitle1!
                                                              .merge(
                                                                const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight.w400,
                                                                ),
                                                              ),
                                                        ),
                                                ),
                                              ),

                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text("data"),
                                                    Text("data"),
                                                    Text("data"),
                                                    Text("data"),
                                                  ],
                                                ),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                                child: Text(
                                                        "${tasks[index].price}" + "-.",
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1!
                                                            .merge(
                                                              TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              color: Colors.pink[200],
                                                            ),
                                                            ),
                                                      ),
                                              ),

                                            ],

                                          ),
                                          
                                          )
                                      ],
                                    ),
                                  ),
                                   Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Column(
                                        
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 90,
                                            height: 27,
                                            decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.black26,
                                          ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                flex: 1,
                                                fit: FlexFit.tight,
                                                child: MaterialButton(
                                                    shape: const CircleBorder(),
                                                    color: Color.fromARGB(
                                                        255, 255, 110, 110),
                                                    padding: EdgeInsets.fromLTRB(0, 0,0, 0),
                                                    onPressed: () {
                                                      context
                                                      .read<provider_app>()
                                                      .minusOrder(index);
                                                    },
                                                    child: const Icon(
                                                      Icons.remove,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                            ),),
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                "   ${tasks[index].amount}",
                                                overflow: TextOverflow.visible,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  height: 1.2102272033691406,
                                                  fontSize: 15.0,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                ),
                                              ),
                                                ),

                                                        Flexible(
                                                flex: 1,
                                                fit: FlexFit.tight,
                                                child: MaterialButton(
                                                    shape: const CircleBorder(),
                                                    color: Color.fromARGB(
                                                        255, 255, 110, 110),
                                                    padding: EdgeInsets.fromLTRB(0, 0,0, 0),
                                                    onPressed: () {
                                                      context
                                                      .read<provider_app>()
                                                      .orderPlus(index);
                                                    },
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                            ),),
                                            



                                                
                                            

                                            
                                                
                                                  

                                              ],

                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                                            child: Container(
                                              child: MaterialButton(

                                                      onPressed: () {
                                                        context
                                                        .read<provider_app>()
                                                        .deleteOrder(index);
                                                      },
                                                      child: Icon(
                                                    Icons.delete,
                                                    color: Color.fromARGB(
                                                        255, 255, 110, 110),
                                                  ),
                                              ),
                                            ),
                                          )

                                        ]
                                        ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                            SizedBox(height: 10,)
                          ],
                        ),
                      );
                    },
                  );
          }),
        ));
  }
}
