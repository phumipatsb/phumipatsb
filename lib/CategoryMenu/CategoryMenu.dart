import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';

import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import '../pull_from_api/provider_Api.dart';


class CategoryMenu extends StatefulWidget {
  @override
  State<CategoryMenu> createState() => _CategoryMenuState();

}

class _CategoryMenuState extends State<CategoryMenu> {
  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<provider_api_Manu>(context, listen: false);
    postModel.getdata();
  }
  List<send> sendprovier =[];
  int selected = 0;
  int selected_sub_cat = 0;

  Widget build(BuildContext context) {
    final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
    //print(postModel.post?.data?.length);
    return postModel.lodeing
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
        : Column(
            children: [
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor(backgroundColor),
                    ),
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                height: 134,
                                width: double.maxFinite,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    itemCount: data?.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selected = index;
                                            selected_sub_cat = 0;
                                            context.read<provider_app>().edit1(index);
                                            context.read<provider_app>().edit1(0);
                                          });
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 15, 9, 0),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          index == selected
                                                              ? Colors.red[300]
                                                              : Colors.white,
                                                      radius: 40,
                                                      child: CircleAvatar(
                                                        radius: 35,
                                                        backgroundColor:
                                                            Colors.white,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                '${data?[index].picture}',
                                                                scale: 3.0),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      '${data?[index].name}'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                              fontFamily: 'Inter',
                                                          color: index ==
                                                                  selected
                                                              ? Colors.red[300]
                                                              : Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                      );
                                    })),
                            const Divider(
                              height: 5,
                              thickness: 2,
                              indent: 0,
                              endIndent: 0,
                              color: Color.fromARGB(255, 255, 110, 110),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor(backgroundColor),
                    ),
                    
                      child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      width: MediaQuery.of(context).size.height,
                                      child: ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              data?[selected].items?.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  selected_sub_cat = index;
                                                  context.read<provider_app>().edit(selected);
                                                  context.read<provider_app>().edit1(selected_sub_cat);
                                                });
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    '${data?[selected].items?[index].name}',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:FontWeight.w400,
                                                        fontFamily: 'Inter',
                                                        color:selected_sub_cat ==index
                                                                ? Colors
                                                                    .red[300]
                                                                : Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  )
                                                ],
                                              ),
                                            );
                                          })),
                      
                    ),
                  ),
                ),
              
            ],
          );
  }

  
}
