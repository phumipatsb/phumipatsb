import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:test1/table/number_people.dart';
import 'package:test1/models/provider_app.dart';
import 'package:test1/pull_from_api/modelsApi_status_table.dart';

import '../RAW/coloer/hex.dart';
import '../models/compronan.dart';
import '../pull_from_api/provider_Api.dart';
import '../sumneworder.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<zoneList> tableListStatus = [];
  late List data;
  var test;
  @override
  void initState() {
    tableListStatus = [];
    super.initState();
    fetchprovider();
  }

  Future fetchprovider() async {
    tableListStatus = [];

    final Model_list = Provider.of<provider_api_table>(context, listen: false);
    await Model_list.getPostData2();
    final StatusList =
        Provider.of<TableStatusProviderApi>(context, listen: false);
    await StatusList.getdatastatus();

    for (int i = 0; i < Model_list.post2!.length; i++) {
      tableListStatus.add(zoneList(
          zone: Model_list.post2![i].zone!,
          id: Model_list.post2![i].id!,
          table: []));
      List items = Model_list.post2![i].items!;
      for (int j = 0; j < items.length; j++) {
        var zonefind = StatusList.post3!.datas!
            .firstWhere(
                (element) =>
                    (element.tableName == Model_list.post2![i].items![j].name &&
                        element.tableZone == Model_list.post2![i].zone),
                orElse: () => Data())
            .toJson();
        // print(tableListStatus[i].zone);
        if (zonefind.isNotEmpty) {
          tableListStatus[i].table.add(tableListNew(
              id: Model_list.post2![i].items![j].id!,
              name: Model_list.post2![i].items![j].name!,
              status: zonefind['status']));
        } else {
          tableListStatus[i].table.add(tableListNew(
              id: Model_list.post2![i].items![j].id!,
              name: Model_list.post2![i].items![j].name!,
              status: []));
        }
      }
    }
    print(tableListStatus.length);
  }

  @override
  Widget build(BuildContext context) {
    List item = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    String zoneNameSelect = context.watch<provider_table>().zoneNameSelect;
    String SubZoneNameSelect1 =
        context.watch<provider_table>().subZoneNameSelect;
    String select = context.watch<provider_table>().seNumberPeople;
    int NumberPeople = 10;
    int? selectindex;
    return Scaffold(
      body: FutureBuilder(
          future: fetchprovider(),
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 8,
                              fit: FlexFit.tight,
                              child: Center(
                                  child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Flexible(
                                            flex: 2,
                                            fit: FlexFit.tight,
                                            child: Container(
                                                child: Row(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      // physics:
                                                      //     NeverScrollableScrollPhysics(),
                                                      itemCount: tableListStatus
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                          child: Container(
                                                              child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18),
                                                                color: Colors
                                                                    .red[100],
                                                              ),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          index == 0
                                                                              ? Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      '${tableListStatus[index].zone}:',
                                                                                      style: TextStyle(fontSize: 40, color: Colors.black),
                                                                                    ),
                                                                                    Padding(
                                                                                        padding: EdgeInsets.all(10),
                                                                                        child: Container(
                                                                                          height: 100,
                                                                                          width: 200,
                                                                                          child: ListView.builder(
                                                                                              physics: NeverScrollableScrollPhysics(),
                                                                                              itemCount: tableListStatus[0].table.length,
                                                                                              itemBuilder: (context, indexQueue) {
                                                                                                return GestureDetector(
                                                                                                  onTap: (() {
                                                                                                    print(indexQueue);
                                                                                                  }),
                                                                                                  child: Container(
                                                                                                    height: 80,
                                                                                                    width: 80,
                                                                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: ChangeColor(tableListStatus[0].table[indexQueue].status)),
                                                                                                    child: Center(child: Text('${tableListStatus[0].table[indexQueue].name}', style: TextStyle(fontSize: 30, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))),
                                                                                                  ),
                                                                                                );
                                                                                              }),
                                                                                        ))
                                                                                  ],
                                                                                )
                                                                              : Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      '${tableListStatus[index].zone}',
                                                                                      style: TextStyle(fontSize: 40, color: Colors.black),
                                                                                    ),
                                                                                    GridView.builder(
                                                                                        shrinkWrap: true,
                                                                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                          crossAxisCount: 5,
                                                                                          crossAxisSpacing: 12.0,
                                                                                          mainAxisSpacing: 10,
                                                                                          mainAxisExtent: 100,
                                                                                        ),
                                                                                        itemCount: tableListStatus[index].table.length,
                                                                                        physics: NeverScrollableScrollPhysics(),
                                                                                        itemBuilder: (context, index2) {
                                                                                          // print('${tableListStatus[index].zone} |${tableListStatus[index].table[index2].name}|${tableListStatus[index].table[index2].status}');
                                                                                          return GestureDetector(
                                                                                            onTap: () {
                                                                                              context.read<provider_table>().ZoneNameSelect('${tableListStatus[index].zone}');
                                                                                              context.read<provider_table>().SubZoneNameSelect('${tableListStatus[index].table[index2].name}');

                                                                                              setState(() {
                                                                                                showDialog(
                                                                                                    context: context,
                                                                                                    builder: (BuildContext context) {
                                                                                                      return AlertDialog(content: StatefulBuilder(builder: (context, StateSetter setState) {
                                                                                                        return Container(
                                                                                                          height: 200,
                                                                                                          width: 400,
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
                                                                                                                                    scrollDirection: Axis.horizontal,
                                                                                                                                    itemCount: item.length,
                                                                                                                                    itemBuilder: (context, indexitem) {
                                                                                                                                      return Padding(
                                                                                                                                        padding: const EdgeInsets.all(1.0),
                                                                                                                                        child: GestureDetector(
                                                                                                                                          onTap: () {
                                                                                                                                            setState(() {
                                                                                                                                              selectindex = indexitem;
                                                                                                                                            });
                                                                                                                                          },
                                                                                                                                          child: Container(
                                                                                                                                            height: 60,
                                                                                                                                            width: 40,
                                                                                                                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: indexitem == selectindex ? Colors.pink.shade100 : Colors.white),
                                                                                                                                            child: Center(
                                                                                                                                                child: Row(
                                                                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                              children: [
                                                                                                                                                Container(
                                                                                                                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                                                                                                  child: Text(
                                                                                                                                                    '${item[indexitem]}',
                                                                                                                                                    style: TextStyle(fontSize: 25, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black),
                                                                                                                                                  ),
                                                                                                                                                ),
                                                                                                                                              ],
                                                                                                                                            )),
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
                                                                                                                          if (select.isEmpty || select == "0") {
                                                                                                                            print("object");
                                                                                                                          } else {
                                                                                                                            Navigator.push(context, MaterialPageRoute(builder: (context) => sumneworder()));
                                                                                                                          }
                                                                                                                        });
                                                                                                                      },
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsets.all(8.0),
                                                                                                                        child: Container(
                                                                                                                            height: 30,
                                                                                                                            width: 350,
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              border: Border.all(width: 2, color: HexColor(lineColor)),
                                                                                                                              borderRadius: BorderRadius.circular(
                                                                                                                                32,
                                                                                                                              ),
                                                                                                                              color: HexColor(textPriceColor),
                                                                                                                            ),
                                                                                                                            child: Center(
                                                                                                                              child: Text("Order", style: TextStyle(fontSize: 30, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.white)),
                                                                                                                            )),
                                                                                                                      )),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        );
                                                                                                      }));
                                                                                                    });
                                                                                              });
                                                                                            },
                                                                                            child: AnimatedContainer(
                                                                                              height: 80,
                                                                                              width: 80,
                                                                                              duration: const Duration(milliseconds: 300),
                                                                                              margin: const EdgeInsets.all(6),
                                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: ChangeColor(tableListStatus[index].table[index2].status)),
                                                                                              child: Center(
                                                                                                child: Text('${tableListStatus[index].table[index2].name}',
                                                                                                    style: TextStyle(
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 26,
                                                                                                    )),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                  ],
                                                                                ),
                                                                        ],
                                                                      )),
                                                                ],
                                                              ),
                                                            ),
                                                          )),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            )),
                                          ),
                                        ],
                                      )))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

ChangeColor(List status) {
  if (status.isEmpty) {
    return Colors.white;
  } else if (status.contains('ORD')) {
    return Colors.yellow;
  } else {
    return Colors.blue;
  }
}
