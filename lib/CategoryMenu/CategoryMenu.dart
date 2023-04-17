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

  List<send> sendprovier = [];
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
              Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
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
                            padding: EdgeInsets.fromLTRB(10, 15, 9, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: index == selected
                                            ? Colors.red[300]
                                            : Colors.white,
                                        radius:
                                            MediaQuery.of(context).size.height /
                                                25,
                                        child: CircleAvatar(
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              30,
                                          backgroundColor: Colors.white,
                                          backgroundImage: NetworkImage(
                                              '${data?[index].picture}',
                                              scale: 3.0),
                                        ),
                                      ),
                                      categoryLanguage(  index)
                                    ],
                                  ),
                                ]),
                          ),
                        );
                      })),
              Container(
                height: MediaQuery.of(context).size.height * 0.01,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Divider(
                  height: 5,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: Color.fromARGB(255, 255, 110, 110),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: data?[selected].items?.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected_sub_cat = index;
                                    context.read<provider_app>().edit(selected);
                                    context
                                        .read<provider_app>()
                                        .edit1(selected_sub_cat);
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${data?[selected].items?[index].name}',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              55,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          color: selected_sub_cat == index
                                              ? Colors.red[300]
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              );
                            })),
                  )),
            ],
          );
  }
  categoryLanguage( int index) {
    var Language = context.watch<provider_Language>().Language;
    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      return Text(
                                        '${data?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
    } else if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      if (data?[index].nameTh !=
          null) {
        if (data?[index].nameTh !=
            "null") {
          return Text(
                                        '${data?[index].nameTh}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    } else if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      if (data?[index].nameJa !=
          null) {
        if (data?[index].nameJa !=
            "null") {
          return Text(
                                        '${data?[index].nameJa}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    } else if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (data?[index].nameCn !=
          null) {
        if (data?[index].nameCn !=
            "null") {
          return Text(
                                        '${data?[index].nameCn}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    }
  }

  subcategoryLanguage( int selected,int index) {
    var Language = context.watch<provider_Language>().Language;
    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      return Text(
                                        '${data?[selected].items?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
    } else if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      if (data?[selected].items?[index].nameTh !=
          null) {
        if (data?[selected].items?[index].nameTh !=
            "null") {
          return Text(
                                        '${data?[selected].items?[index].nameTh}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[selected].items?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    } else if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
      if (data?[selected].items?[index].nameJa !=
          null) {
        if (data?[selected].items?[index].nameJa !=
            "null") {
          return Text(
                                        '${data?[selected].items?[index].nameJa}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[selected].items?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    } else if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (data?[selected].items?[index].nameCn !=
          null) {
        if (data?[selected].items?[index].nameCn !=
            "null") {
          return Text(
                                        '${data?[selected].items?[index].nameCn}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
        }
      } else {
        return Text(
                                        '${data?[selected].items?[index].name}'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                60,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter',
                                            color: index == selected
                                                ? Colors.red[300]
                                                : Colors.black54),
                                      );
      }
    }
  }
}
