import 'package:flutter/material.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/provider_app.dart';
import 'package:test1/pull_from_api/modelsApi_status_table.dart';

import '../pull_from_api/provider_Api.dart';
import '../sumneworder.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class zoneList {
  String zone = "";
  String id = "";
  List<tableListNew> table = [];
  zoneList({required this.zone, required this.id, required this.table});
}

class tableListNew {
  String name = "";
  String id = "";
  List status = [];
  tableListNew({required this.name, required this.id, required this.status});
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
                                                                                              Navigator.push(context, MaterialPageRoute(builder: (context) => sumneworder()));
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
                                                                                                      fontSize: 20,
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
