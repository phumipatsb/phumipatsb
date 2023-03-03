import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../models/provider_app.dart';
import '../pull_from_api/provider_Api.dart';
import '../sumneworder.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  void initState() {
    super.initState();
    final Model_list = Provider.of<provider_api_table>(context, listen: false);
    final StatusList =
        Provider.of<TableStatusProviderApi>(context, listen: false);
    StatusList.getPostData();
    Model_list.getdata_table();
  }

  Widget build(BuildContext context) {
    //final zone = Provider.of<zoneName>(context);
    final Model_list = Provider.of<provider_api_table>(context);
    final StatusList = Provider.of<TableStatusProviderApi>(context);

    return Scaffold(
      body: Model_list.lodeing
          ? Center(
              child: Container(
                child: SpinKitThreeBounce(itemBuilder: ((context, index) {
                  return DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              index.isInfinite ? Colors.red : Colors.red[100]));
                })),
              ),
            )
          : Center(
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
                                                      itemCount: Model_list
                                                          .post_table?.length,
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
                                                                                      '${Model_list.post_table![index].zone}:',
                                                                                      style: TextStyle(fontSize: 40, color: Colors.black),
                                                                                    ),
                                                                                    Padding(
                                                                                        padding: EdgeInsets.all(10),
                                                                                        child: Container(
                                                                                          height: 100,
                                                                                          width: 200,
                                                                                          child: ListView.builder(
                                                                                              itemCount: Model_list.post_table![0].items!.length,
                                                                                              itemBuilder: (context, index_queue) {
                                                                                                return GestureDetector(
                                                                                                  onTap: (() {
                                                                                                    print(index_queue);
                                                                                                  }),
                                                                                                  child: Container(
                                                                                                    height: 80,
                                                                                                    width: 80,
                                                                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white),
                                                                                                    child: Center(child: Text('${Model_list.post_table![index].items![index_queue].name}')),
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
                                                                                      '${Model_list.post_table![index].zone}',
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
                                                                                        itemCount: Model_list.post_table![index].items!.length,
                                                                                        physics: NeverScrollableScrollPhysics(),
                                                                                        itemBuilder: (context, index2) {
                                                                                          return GestureDetector(
                                                                                            onTap: () {
                                                                                              context.read<provider_table>().ZoneNameSelect('${Model_list.post_table![index].zone}');
                                                                                              context.read<provider_table>().SubZoneNameSelect('${Model_list.post_table![index].items![index2].name}');
                                                                                              Navigator.push(context, MaterialPageRoute(builder: (context) => sumneworder()));
                                                                                              
                                                                                            },
                                                                                            child: AnimatedContainer(
                                                                                              height: 80,
                                                                                              width: 80,
                                                                                              duration: const Duration(milliseconds: 300),
                                                                                              margin: const EdgeInsets.all(6),
                                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white),
                                                                                              child: Center(
                                                                                                child: Text('${Model_list.post_table![index].items![index2].name}',
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
            ),
    );
  }
}

class CheckColorFormApi extends StatelessWidget {
  const CheckColorFormApi({super.key});

  @override
  Widget build(BuildContext context) {
    final StatusList = Provider.of<TableStatusProviderApi>(context);
    return ListView.builder(
        itemCount: StatusList.post?.datas!.length,
        itemBuilder: (context, index) {
          return Container();
        });
  }
}

ChangeColor(String status) {
  switch (status) {
    case 'ODR':
      print('Ordering');
      return Colors.yellow;
      break; // The switch statement must be told to exit, or it will execute every case.
    case 'Pay':
      print('Pay');
      return Colors.blue;
      break;
    default:
      print('');
      return Colors.white;
  }
}
