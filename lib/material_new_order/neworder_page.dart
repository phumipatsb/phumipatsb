import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import 'package:test1/pull_from_api/linkApi.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';
import 'package:test1/models/compronan.dart';
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
    //var addonofss1 =context.watch<provider_app>().addonofss;

    return Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return tasks.length <= 0
          ? Center(
              child: Text(
                '''NO ITEM''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.2102272327129657,
                  fontSize: MediaQuery.of(context).size.height / 70,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 255, 110, 110),
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, int index) {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
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
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Container(
                                    width: 120,
                                    child: Text(
                                      "${tasks[index].name}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                70,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 0, 0, 0),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 120,
                                    child: LayoutBuilder(builder:
                                        (BuildContext context,
                                            BoxConstraints constraints) {
                                      return tasks[index].addonSelect.length <=
                                              0
                                          ? Center()
                                          : ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: tasks[index]
                                                  .addonSelect
                                                  .length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index2s) {
                                                print(tasks[index]
                                                    .addonSelect[index2s]
                                                    .subNameAddOn);
                                                return Column(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            tasks[index]
                                                                .addonSelect[
                                                                    index2s]
                                                                .nameaddon,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                            style:
                                                                Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .merge(
                                                                      TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                          ),
                                                          Text(','),
                                                          Text(
                                                            tasks[index]
                                                                .addonSelect[
                                                                    index2s]
                                                                .subNameAddOn,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                            style:
                                                                Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .merge(
                                                                      TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                );
                                              });
                                    })),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text(
                                    "${tasks[index].price}" + "-.",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .merge(
                                          TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.pink[200],
                                          ),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.08,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.021,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white30,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: MaterialButton(
                                            shape: const CircleBorder(),
                                            color: Color.fromARGB(
                                                255, 255, 110, 110),
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                          ),
                                        ),
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
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
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
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    child: MaterialButton(
                                      onPressed: () {
                                        context
                                            .read<provider_app>()
                                            .deleteOrder(index);
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color:
                                            Color.fromARGB(255, 255, 110, 110),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]);
              });
    }));
  }
}
