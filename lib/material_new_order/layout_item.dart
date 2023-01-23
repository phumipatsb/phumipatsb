import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'package:test1/pull_from_api/orderlist.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';

import '../models/provider_app.dart';

class layoutWidget extends StatefulWidget {
  layoutWidget({Key? key,}) : super(key: key);
  
  @override
  State<layoutWidget> createState() => _layoutWidgetState();
}

class _layoutWidgetState extends State<layoutWidget> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;
    // print('do' + tasks[1].amount.toString());
    // print('do2' + widget.boss[0].name.toString());

    //print('do' +tasks.elementAt(1)['price'].toString());
  
    return Container(
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
                  return Container(
                      height: 90.0,
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
                                          child: Container(
                                            width: 308.0,
                                            height: 74.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        left: 10.0,
                                        top: 8.0,
                                        right: null,
                                        bottom: null,
                                        width: 55.0,
                                        height: 55.0,
                                        child: Container(
                                          width: 55.0,
                                          height: 55.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                            ),
                                            child: Image.network(
                                              tasks[index].images,
                                              height: 170,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              70, 10, 95, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
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
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "${tasks[index].price}" + "-.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .merge(
                                                      TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.pink[200],
                                                      ),
                                                    ),
                                              ),
                                              const SizedBox(
                                                height: 8.0,
                                              ),
                                            ],
                                          )),
                                      Positioned(
                                        left: 212.0,
                                        top: 8.0,
                                        right: null,
                                        bottom: null,
                                        width: 90.0,
                                        height: 27.0,
                                        child: Container(
                                          width: 90.0,
                                          height: 27.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 217, 217, 217),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 214.0,
                                        top: 10.0,
                                        right: null,
                                        bottom: null,
                                        width: 23.0,
                                        height: 23.0,
                                        child: Container(
                                          width: 23.0,
                                          height: 23.0,
                                          child: SvgWidget(painters: [
                                            SvgPathPainter.fill()
                                              ..addPath(
                                                  'M23 11.5C23 17.8513 17.8513 23 11.5 23C5.14873 23 0 17.8513 0 11.5C0 5.14873 5.14873 0 11.5 0C17.8513 0 23 5.14873 23 11.5Z')
                                              ..color = Color.fromARGB(
                                                  255, 255, 110, 110),
                                          ]),
                                        ),
                                      ),
                                      Positioned(
                                        left: 276.0,
                                        top: 10.0,
                                        right: null,
                                        bottom: null,
                                        width: 23.0,
                                        height: 23.0,
                                        child: Container(
                                          width: 23.0,
                                          height: 23.0,
                                          child: SvgWidget(painters: [
                                            SvgPathPainter.fill()
                                              ..addPath(
                                                  'M23 11.5C23 17.8513 17.8513 23 11.5 23C5.14873 23 0 17.8513 0 11.5C0 5.14873 5.14873 0 11.5 0C17.8513 0 23 5.14873 23 11.5Z')
                                              ..color = Color.fromARGB(
                                                  255, 255, 110, 110),
                                          ]),
                                        ),
                                      ),
                                      Positioned(
                                        left: 214,
                                        top: 7.5,
                                        right: null,
                                        bottom: null,
                                        width: 19.0,
                                        height: 29.0,
                                        child: GestureDetector(
                                          onTap: () {
                                            context
                                                .read<provider_app>()
                                                .minusOrder(index);
                                          },
                                          child: Container(
                                            child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 275,
                                        top: 7.5,
                                        right: null,
                                        bottom: null,
                                        width: 15.0,
                                        height: 29.0,
                                        child: GestureDetector(
                                          onTap: () {
                                            context
                                                .read<provider_app>()
                                                .orderPlus(index);
                                          },
                                          child: Container(
                                            child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 255.0,
                                        top: 14.0,
                                        right: null,
                                        bottom: null,
                                        width: 12.0,
                                        height: 23.0,
                                        child: Text(
                                          "${tasks[index].amount}",
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
                                      Positioned(
                                        left: 260,
                                        top: 15,
                                        right: 0,
                                        bottom: 0.0,
                                        width: null,
                                        height: null,
                                        child: GestureDetector(
                                          onTap: () {
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
                                      )
                                    ])))
                      ]));
                },
              );
      }),
    );
  }
}