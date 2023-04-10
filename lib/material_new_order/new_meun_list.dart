import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/pull_from_api/provider_Api.dart';
import '../models/provider_app.dart';
import '../models/compronan.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:http/http.dart' as http;
import '../pull_from_api/modelsApi_manu.dart';

class homepage extends StatefulWidget {
  //homepage(Key? key) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<homepage> {
  final ScrollController _controller = ScrollController();
  Map<int, String> selectedOptions = {};
  List<addonofs> chooseAddon = [];
  List<Option> AddOption = [];
  TextEditingController textarea = TextEditingController();
  bool st5 = false;

  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<provider_api_Manu>(context, listen: false);
    postModel.getdata();
  }

  Widget build(BuildContext context) {
    final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
    var _groupOptionList = postModel.post?.groupOptionList;
    bool st5 = false;
    String _radioValue;
    final ImageErrorWidgetBuilder? errorBuilder;
    int selected = context.watch<provider_app>().index1;

    int selectedSubCat = context.watch<provider_app>().index2;

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
        : Scrollbar(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                controller: _controller,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 237,
                ),
                itemCount: data?[selected].items?[selectedSubCat].items?.length,
                itemBuilder: (BuildContext context, int index) {
                  bool st;
                  var tasks = context.read<provider_app>().tasks;

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                      color: Colors.white,
                    ),
                    child: Wrap(
                      children: [
                        GestureDetector(
                          onTap: () {
                            var mapObj = postModel.post!.groupOptionList;
                            //print(mapObj);

                            var Options =
                                '${data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions}';
                            print("itemGroupOptions" +
                                "${data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions}");

                            if (Options.isNotEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.0))),
                                      contentPadding:
                                          EdgeInsets.only(top: 10.0),
                                      content: StatefulBuilder(
                                          builder: (context, setState) {
                                        return Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              0.9,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              1.58,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8, 0, 8, 0),
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.close,
                                                      color: Colors.black54,
                                                      size: 45,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      clecaaddon();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8, 0, 8, 0),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      3.4,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      0.9,
                                                  child: ListView.builder(
                                                    shrinkWrap: false,
                                                    itemCount: postModel
                                                        .post!
                                                        .groupOptionList![data?[
                                                                selected]
                                                            .items?[
                                                                selectedSubCat]
                                                            .items?[index]
                                                            .itemGroupOptions]!
                                                        .length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index2) {
                                                      return Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            3,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            questionLanguage(
                                                                selected,
                                                                selectedSubCat,
                                                                index,
                                                                index2),
                                                            const Divider(
                                                              height: 10,
                                                              thickness: 2,
                                                              indent: 0,
                                                              endIndent: 0,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      110,
                                                                      110),
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    3,
                                                                child: postModel
                                                                            .post!
                                                                            .groupOptionList![data![selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2]
                                                                            .mode ==
                                                                        Mode.SIN
                                                                    ? ListView.builder(
                                                                        physics: NeverScrollableScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        itemCount: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items!.length,
                                                                        itemBuilder: (context, index_sub_cat_addon) {
                                                                          AddOption.add(Option(
                                                                              Choice: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice,
                                                                              price: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price));
                                                                          //print('sss ${AddOption}');
                                                                          int? defval = postModel
                                                                              .post!
                                                                              .groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2]
                                                                              .defaultChoice;
                                                                          print("def" +
                                                                              "$defval");
                                                                          _radioValue =
                                                                              "${postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}";
                                                                          return RadioListTile(
                                                                              title: choiceLanguage(selected, selectedSubCat, index, index2, index_sub_cat_addon),
                                                                              secondary: Text(
                                                                                '${postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price}',
                                                                                style: const TextStyle(
                                                                                  fontSize: 25,
                                                                                  fontWeight: FontWeight.w700,
                                                                                ),
                                                                              ),
                                                                              value: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].id,
                                                                              groupValue: selectedOptions[postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items!.length],
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  _radioValue = val!;

                                                                                  selectedOptions[postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items!.length] = val!;

                                                                                  var test = chooseAddon.indexWhere((element) => element.nameaddon == postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question);

                                                                                  if (test != -1) {
                                                                                    chooseAddon[test].subNameAddOn = postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice!;
                                                                                    chooseAddon[test].price = postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price!;
                                                                                  } else {
                                                                                    chooseAddon.add(addonofs(nameaddon: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question!, subNameAddOn: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice!, price: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price!, ID: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].id!));
                                                                                    chooseAddon.toSet().toList();
                                                                                    print(chooseAddon);
                                                                                  }
                                                                                  // print('A :${chooseAddon.length}');
                                                                                });
                                                                              });
                                                                        })
                                                                    : Container(
                                                                        height:
                                                                            MediaQuery.of(context).size.height *
                                                                                3,
                                                                        child: choiceoptions(
                                                                            selected,
                                                                            selectedSubCat,
                                                                            index,
                                                                            index2),
                                                                      ))
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10,
                                                alignment: Alignment.bottomLeft,
                                                padding: EdgeInsets.all(10),
                                                child: Text('NOTE',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black)),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Column(
                                                  children: [
                                                    TextField(
                                                        controller: textarea,
                                                        keyboardType:
                                                            TextInputType
                                                                .multiline,
                                                        maxLines: 4,
                                                        autocorrect: true,
                                                        decoration:
                                                            InputDecoration(
                                                          hintStyle: TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.grey),
                                                          filled: true,
                                                          fillColor:
                                                              Colors.white70,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .fromLTRB(10,
                                                                      0, 0, 0),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8.0)),
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .red,
                                                                    width: 2),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8.0)),
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .green),
                                                          ),
                                                        )),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      context
                                                          .read<provider_app>()
                                                          .addtasks1(
                                                            tasks1(
                                                              name:
                                                                  "${data?[selected].items?[selectedSubCat].items?[index].name}",
                                                              price: data?[selected]
                                                                  .items?[
                                                                      selectedSubCat]
                                                                  .items?[index]
                                                                  .price,
                                                              images:
                                                                  '${data?[selected].items?[selectedSubCat].items?[index].picture}',
                                                              idItem:
                                                                  '${data?[selected].items?[selectedSubCat].items?[index].itemId}',
                                                              addonSelect:
                                                                  chooseAddon,
                                                            ),
                                                          );

                                                      clecaaddon();
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        top: 21, bottom: 21),
                                                    decoration: BoxDecoration(
                                                      color: HexColor(confi),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      32.0),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      32.0)),
                                                    ),
                                                    child: Text(
                                                      "Confirm",
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.white),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  });
                            } else {
                              setState(
                                () {
                                  //print('boss');

                                  context.read<provider_app>().addtasks1(
                                        tasks1(
                                          name:
                                              "${data?[selected].items?[selectedSubCat].items?[index].name}",
                                          price: data?[selected]
                                              .items?[selectedSubCat]
                                              .items?[index]
                                              .price,
                                          images:
                                              '${data?[selected].items?[selectedSubCat].items?[index].picture}',
                                          idItem:
                                              '${data?[selected].items?[selectedSubCat].items?[index].itemId}',
                                          addonSelect: [],
                                        ),
                                      );
                                  selectedOptions = {};
                                  print(selectedOptions);
                                },
                              );
                            }
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                // child: Image.network(
                                //     "${data?[selected].items?[selectedSubCat].items?[index].picture}",
                                //     height: 170, frameBuilder: (context,
                                //         child,
                                //         frame,
                                //         wasSynchronouslyLoaded) {
                                //   return child;
                                // }, loadingBuilder:
                                //         (context, child, loadingProgress) {
                                //   if (loadingProgress == null) {
                                //     return child;
                                //   } else {
                                //     return Container(
                                //       height: 170,
                                //       child: Center(
                                //         child: Stack(
                                //           children: [

                                //               Center(
                                //                 child: Container(
                                //                   child: CircularProgressIndicator(),
                                //                 ),
                                //               )
                                //           ],

                                //         ),
                                //       ),
                                //     );
                                //   }
                                // })

                                child: Image.network(
                                  '${data?[selected].items?[selectedSubCat].items?[index].picture}',
                                  errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) {
                                    return Container(
                                        height: 170,
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              Text('Failed to load image'),
                                              CircularProgressIndicator(),
                                            ],
                                          ),
                                        ));
                                  },
                                ),
                                //   child: FadeInImage(
                                //   image: NetworkImage(${data?[selected].items?[selectedSubCat].items?[index].picture}),
                                //   placeholder: AssetImage(
                                //       "assets/images/placeholder.jpg"),
                                //   imageErrorBuilder:
                                //       (context, error, stackTrace) {
                                //     return Image.asset(
                                //         'assets/images/error.jpg',
                                //         fit: BoxFit.fitWidth);
                                //   },
                                //   fit: BoxFit.fitWidth,
                                // ),

                                // child: Image.network(
                                //   '${data?[selected].items?[selectedSubCat].items?[index].picture}',
                                //   height: 170,
                                //   width: double.infinity,
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    nameLanguage(
                                        selected, selectedSubCat, index),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      '${data?[selected].items?[selectedSubCat].items?[index].price}.-',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .merge(
                                            TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  255, 255, 111, 111),
                                            ),
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
  }

  choiceoptions(int selected, int selectedSubCat, int index, int index3) {
    final postModel = Provider.of<provider_api_Manu>(context);
    var data = postModel.post?.data;
    bool st5 = false;

    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: postModel
            .post!
            .groupOptionList![data?[selected]
                .items?[selectedSubCat]
                .items?[index]
                .itemGroupOptions]![index3]
            .items!
            .length,
        itemBuilder: (BuildContext context, int index2) {
          return Align(
            alignment: AlignmentDirectional(0.4, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(10, 0),
                  child: Container(
                    width: 50,
                    child: FormField<bool>(
                      builder: (state) {
                        return Column(
                          children: <Widget>[
                            Checkbox(
                              value: st5,
                              onChanged: (bool? value) {
                                setState(
                                  () {
                                    st5 = value!;
                                    state.didChange(value);

                                    if (value == true) {
                                      (chooseAddon.add(addonofs(
                                          price: postModel
                                              .post!
                                              .groupOptionList![data?[selected]
                                                  .items?[selectedSubCat]
                                                  .items?[index]
                                                  .itemGroupOptions]![index3]
                                              .items![index2]
                                              .price!,
                                          subNameAddOn:
                                              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                                          ID:
                                              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].id!}",
                                          nameaddon:
                                              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].questionTh}")));
                                    }
                                    if (value == false) {
                                      // context
                                      //     .read<provider_app>()
                                      //     .deleteaddon(addOnlist.addno1[indexs].Subaddon[index2].ID);
                                      deleteaddon(
                                          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].id!}");
                                      //print(chooseAddon);
                                    } else {}
                                    cleccheckbox(value);
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: 425,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Text(
                          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].price}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  questionLanguage(int selected, int selectedSubCat, int index, int index2) {
    var Language = context.watch<provider_Language>().Language;
    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      return Text(
        "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
      );
    } else if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (postModel
              .post!
              .groupOptionList![data?[selected]
                  .items?[selectedSubCat]
                  .items?[index]
                  .itemGroupOptions]![index2]
              .questionTh !=
          null) {
        if (postModel
                .post!
                .groupOptionList![data?[selected]
                    .items?[selectedSubCat]
                    .items?[index]
                    .itemGroupOptions]![index2]
                .questionTh !=
            "null") {
          return Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionTh}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          );
        }
      } else {
        return Text(
          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        );
      }
    } else if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (postModel
              .post!
              .groupOptionList![data?[selected]
                  .items?[selectedSubCat]
                  .items?[index]
                  .itemGroupOptions]![index2]
              .questionJa !=
          null) {
        if (postModel
                .post!
                .groupOptionList![data?[selected]
                    .items?[selectedSubCat]
                    .items?[index]
                    .itemGroupOptions]![index2]
                .questionJa !=
            "null") {
          return Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionJa}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          );
        }
      } else {
        return Text(
          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        );
      }
    } else if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (postModel
              .post!
              .groupOptionList![data?[selected]
                  .items?[selectedSubCat]
                  .items?[index]
                  .itemGroupOptions]![index2]
              .questionCn !=
          null) {
        if (postModel
                .post!
                .groupOptionList![data?[selected]
                    .items?[selectedSubCat]
                    .items?[index]
                    .itemGroupOptions]![index2]
                .questionCn !=
            "null") {
          return Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionCn}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          );
        }
      } else {
        return Text(
          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        );
      }
    }
  }

  choiceLanguage(int selected, int selectedSubCat, int index, int index2,
      int index_sub_cat_addon) {
    var Language = context.watch<provider_Language>().Language;

    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      return Container(
        child: Text(
          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    }
    if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceTh}" !=
          null) {
        if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceTh}" ==
            "null") {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        } else {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceTh}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceTh}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
    }

    if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}" !=
          null) {
        if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceCn}" ==
            "null") {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        } else {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceJa}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
    }
    if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceCn}" !=
          null) {
        if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceCn}" ==
            "null") {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        } else {
          return Container(
            child: Text(
              "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choiceCn}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        }
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
    }
  }

  void deleteaddon(String id) {
    chooseAddon.removeWhere((item) => item.ID == id);
    print(chooseAddon);
  }

  clecaaddon() {
    chooseAddon = [];
    selectedOptions = {};
    //print("clecaaddon");
    //print(chooseAddon);
  }

  bool cleccheckbox(bool value) {
    value = false;
    return value;
  }

  nameLanguage(int selected, int selectedSubCat, int index) {
    var Language = context.watch<provider_Language>().Language;
    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      return Text(
        '${data?[selected].items?[selectedSubCat].items?[index].name}',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: Theme.of(context).textTheme.subtitle1!.merge(
              const TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
      );
    } else if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (data?[selected].items?[selectedSubCat].items?[index].nameTh != null) {
        if (data?[selected].items?[selectedSubCat].items?[index].nameTh !=
            "null") {
          return Text(
            '${data?[selected].items?[selectedSubCat].items?[index].nameTh}',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.subtitle1!.merge(
                  const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
          );
        }
      } else {
        return Text(
          '${data?[selected].items?[selectedSubCat].items?[index].name}',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.subtitle1!.merge(
                const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
        );
      }
    } else if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (data?[selected].items?[selectedSubCat].items?[index].nameJa != null) {
        if (data?[selected].items?[selectedSubCat].items?[index].nameJa !=
            "null") {
          return Text(
            "${data?[selected].items?[selectedSubCat].items?[index].nameJa}",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          );
        }
      } else {
        return Text(
          "${data?[selected].items?[selectedSubCat].items?[index].name}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        );
      }
    } else if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if (data?[selected].items?[selectedSubCat].items?[index].nameCn != null) {
        if (data?[selected].items?[selectedSubCat].items?[index].nameCn !=
            "null") {
          return Text(
            "${data?[selected].items?[selectedSubCat].items?[index].nameCn}",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          );
        }
      } else {
        return Text(
          "${data?[selected].items?[selectedSubCat].items?[index].name}",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        );
      }
    }
  }
}
