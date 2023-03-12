import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/pull_from_api/provider_Api.dart';
import '../models/provider_app.dart';
import '../models/compronan.dart';

import 'package:group_radio_button/group_radio_button.dart';

import '../pull_from_api/modelsApi_manu.dart';

class homepage extends StatefulWidget {
  //homepage(Key? key) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<homepage> {
  final ScrollController _controller = ScrollController();
  final _formKey = GlobalKey<FormState>();
  int _paymentType = 1;
  var _oneValue = '';
  Map<int, String> selectedOptions = {};
  List<addonofs> chooseAddon = [];
  List<Option> AddOption = [];
  bool checkboxValue = false;
  int y = 10;
  TextEditingController textarea = TextEditingController();
  String? _groupValue;
  bool st5 = false;
  ValueChanged<String?> _valueChangedHandler(
      String name, String subname, num price, String ID) {
    return (value) => setState(() {
          _groupValue = value!;
          print(chooseAddon);
          final bool isSelected = value == _groupValue;
          chooseAddon.toSet().toList();

          print('Location  : $isSelected');
          if (isSelected == true) {
            (chooseAddon.add(addonofs(
                price: price, subNameAddOn: subname, nameaddon: name, ID: ID)));
          } else if (isSelected == true) {
            deleteaddon(ID);
          }
        });
  }

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

    int selected = context.watch<provider_app>().index1;

    int selectedSubCat = context.watch<provider_app>().index2;
    // print("index1 :"+selected.toString());
    // print("index2 :"+ selectedSubCat.toString());

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
                  //var tasks2 = context.read<provider_app>().tasks2;
                  //var addOnlist = Provider.of<addOn>(context);
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

                            if (data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions !=
                                    '' ||
                                data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions !=
                                    null) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: StatefulBuilder(
                                        builder: (context, setState) {
                                      return Container(
                                        height: 600,
                                        width: 500,
                                        child: Column(
                                          children: [
                                            Container(
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
                                            Container(
                                              height: 370,
                                              width: 500,
                                              child: ListView.builder(
                                                shrinkWrap: false,
                                                itemCount: postModel
                                                    .post!
                                                    .groupOptionList![data?[
                                                            selected]
                                                        .items?[selectedSubCat]
                                                        .items?[index]
                                                        .itemGroupOptions]!
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index2) {
                                                  print(postModel
                                                      .post!
                                                      .groupOptionList![
                                                          data?[selected]
                                                              .items?[
                                                                  selectedSubCat]
                                                              .items?[index]
                                                              .itemGroupOptions]![
                                                          index2]
                                                      .mode);
                                                  return Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        choiceLanguage(
                                                            selected,
                                                            selectedSubCat,
                                                            index,
                                                            index2),

                                                        const Divider(
                                                          height: 10,
                                                          thickness: 2,
                                                          indent: 0,
                                                          endIndent: 0,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              110,
                                                              110),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        // choiceoptions(
                                                        //     "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].mode}",
                                                        //     selected,
                                                        //     selectedSubCat,
                                                        //     index,
                                                        //     index2),
                                                        Container(
                                                            // ignore: unrelated_type_equality_checks
                                                            child: postModel
                                                                        .post!
                                                                        .groupOptionList![
                                                                            data![selected].items?[selectedSubCat].items?[index].itemGroupOptions]![
                                                                            index2]
                                                                        .mode ==
                                                                    Mode.SIN
                                                                ? ListView
                                                                    .builder(
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        shrinkWrap:
                                                                            true,
                                                                        itemCount: postModel
                                                                            .post!
                                                                            .groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![
                                                                                index2]
                                                                            .items!
                                                                            .length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index_sub_cat_addon) {
                                                                          AddOption.add(Option(
                                                                              Choice: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice,
                                                                              price: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price));
                                                                          //print('sss ${AddOption}');
                                                                          return RadioListTile(
                                                                              title: Text('${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice!}'),
                                                                              secondary: Text('${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price}'),
                                                                              value: postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].id,
                                                                              groupValue: selectedOptions[postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items!.length],
                                                                              onChanged: (val) {
                                                                                setState(() {
                                                                                  selectedOptions[postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items!.length] = val!;
                                                                                  // chooseAddon.add(AddonItem(title: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question, addonTitle: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice, price: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price));
                                                                                  // chooseAddon.toSet().toList();
                                                                                  var test = chooseAddon.indexWhere((element) => element.nameaddon == postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question);
                                                                                  print(test);
                                                                                  if (test != -1) {
                                                                                    chooseAddon[test].subNameAddOn = postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice!;
                                                                                  } else {
                                                                                    chooseAddon.add(addonofs(nameaddon: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question!, subNameAddOn: postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice!, price: postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price!, ID: postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].id!));
                                                                                    chooseAddon.toSet().toList();
                                                                                    print(chooseAddon);
                                                                                  }
                                                                                  // print('A :${chooseAddon.length}');
                                                                                });
                                                                              });
                                                                        })
                                                                : Container(
                                                                    child: ListView
                                                                        .builder(
                                                                      physics:
                                                                          NeverScrollableScrollPhysics(),
                                                                      shrinkWrap:
                                                                          true,
                                                                      itemCount: postModel
                                                                          .post!
                                                                          .groupOptionList![data?[selected]
                                                                              .items?[selectedSubCat]
                                                                              .items?[index]
                                                                              .itemGroupOptions]![index2]
                                                                          .items!
                                                                          .length,
                                                                      itemBuilder:
                                                                          (BuildContext context,
                                                                              int index2) {
                                                                        return Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.4,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(10, 0),
                                                                                child: Container(
                                                                                  width: 50,
                                                                                  child: FormField<bool>(
                                                                                    builder: (state) {
                                                                                      return Column(
                                                                                        children: <Widget>[
                                                                                          Row(
                                                                                            children: <Widget>[
                                                                                              Checkbox(
                                                                                                value: st5,
                                                                                                onChanged: (bool? value) {
                                                                                                  setState(
                                                                                                    () {
                                                                                                      st5 = value!;
                                                                                                      state.didChange(value);

                                                                                                      if (value == true) {
                                                                                                        (chooseAddon.add(addonofs(price: postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].price!, subNameAddOn: "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].choice}", ID: "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].id!}", nameaddon: "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionTh}")));
                                                                                                      }
                                                                                                      if (value == false) {
                                                                                                        // context
                                                                                                        //     .read<provider_app>()
                                                                                                        //     .deleteaddon(addOnlist.addno1[indexs].Subaddon[index2].ID);
                                                                                                        deleteaddon("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].id!}");
                                                                                                        //print(chooseAddon);
                                                                                                      } else {}
                                                                                                      cleccheckbox(value);
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].choice}", style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.black)),
                                                                                    Text("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index2].price}", style: TextStyle(fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.black)),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ))
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Container(
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
                                              padding: EdgeInsets.all(0),
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
                                                            color: Colors.grey),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.white70,
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 0, 0),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
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
                                                              BorderRadius.all(
                                                                  Radius
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
                                                  SizedBox(
                                                    width: 300,
                                                    height: 50.0,
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          //print(textarea.text);
                                                          setState(
                                                            () {
                                                              context
                                                                  .read<
                                                                      provider_app>()
                                                                  .addtasks1(
                                                                    tasks1(
                                                                      name:
                                                                          "${data?[selected].items?[selectedSubCat].items?[index].name}",
                                                                      price: data?[selected]
                                                                          .items?[
                                                                              selectedSubCat]
                                                                          .items?[
                                                                              index]
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
                                                            },
                                                          );
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Color.fromARGB(
                                                              255,
                                                              255,
                                                              111,
                                                              111), // background
                                                        ),
                                                        child: Text("Confirm",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .white))),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                                },
                              );
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
                                child: Image.network(
                                  '${data?[selected].items?[selectedSubCat].items?[index].picture}',
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${data?[selected].items?[selectedSubCat].items?[index].name}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .merge(
                                            const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                    ),
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

  choiceoptions(
      String status, int selected, int selectedSubCat, int index, int index3) {
    print(status);

    if (status == "Mode.SIN") {
      //var addOnlist = Provider.of<addOn>(context);
      var _result;
      var _selectedOption;
      String? selectedItem;

      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      Map<int, String> selectedOptions = {};
      return Container(
        width: 200,
        height: 50,
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
            AddOption.add(Option(
                Choice: postModel
                    .post!
                    .groupOptionList![data?[selected]
                        .items?[selectedSubCat]
                        .items?[index]
                        .itemGroupOptions]![index3]
                    .items![index2]
                    .choice!,
                price: postModel
                    .post!
                    .groupOptionList![data?[selected]
                        .items?[selectedSubCat]
                        .items?[index]
                        .itemGroupOptions]![index3]
                    .items![index2]
                    .price!));
            return Align(
              alignment: AlignmentDirectional(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RadioListTile(
                      title: Text(
                          '${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].choice!}'),
                      secondary: Text(
                          '${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].price!}'),
                      value: postModel
                          .post!
                          .groupOptionList![data?[selected]
                              .items?[selectedSubCat]
                              .items?[index]
                              .itemGroupOptions]![index3]
                          .items![index2]
                          .id!,
                      groupValue: selectedOptions[postModel
                          .post!
                          .groupOptionList![data?[selected]
                              .items?[selectedSubCat]
                              .items?[index]
                              .itemGroupOptions]![index2]
                          .items!
                          .length],
                      onChanged: (val) {
                        setState(() {
                          selectedOptions[postModel
                              .post!
                              .groupOptionList![data?[selected]
                                  .items?[selectedSubCat]
                                  .items?[index]
                                  .itemGroupOptions]![index2]
                              .items!
                              .length] = val!;
                          // chooseAddon.add(AddonItem(title: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question, addonTitle: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].choice, price: postModel.post!.groupOptionList![data[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].items![index_sub_cat_addon].price));
                          // chooseAddon.toSet().toList();
                          var test = chooseAddon.indexWhere((element) =>
                              element.nameaddon ==
                              postModel
                                  .post!
                                  .groupOptionList![data?[selected]
                                      .items?[selectedSubCat]
                                      .items?[index]
                                      .itemGroupOptions]![index2]
                                  .question!);
                          print(test);
                          if (test != -1) {
                            chooseAddon[test].subNameAddOn = postModel
                                .post!
                                .groupOptionList![data?[selected]
                                    .items?[selectedSubCat]
                                    .items?[index]
                                    .itemGroupOptions]![index3]
                                .items![index2]
                                .choice!;
                          } else {
                            chooseAddon.add(addonofs(
                                nameaddon: postModel
                                    .post!
                                    .groupOptionList![data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions]![index2]
                                    .question!,
                                subNameAddOn: postModel
                                    .post!
                                    .groupOptionList![data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions]![index3]
                                    .items![index2]
                                    .choice!,
                                price: postModel
                                    .post!
                                    .groupOptionList![data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions]![index3]
                                    .items![index2]
                                    .price!,
                                ID: postModel
                                    .post!
                                    .groupOptionList![data?[selected]
                                        .items?[selectedSubCat]
                                        .items?[index]
                                        .itemGroupOptions]![index3]
                                    .items![index2]
                                    .id!));
                            chooseAddon.toSet().toList();
                            print(chooseAddon);
                          }
                          // print('A :${chooseAddon.length}');
                        });
                      })

                  // Container(
                  //   width: 450,
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.max,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Container(
                  //         child: Row(
                  //           children: [
                  //             Text(
                  //                 "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                  //                 style: TextStyle(
                  //                     fontSize: 20,
                  //                     fontFamily: 'Inter',
                  //                     fontWeight: FontWeight.w500,
                  //                     color: Colors.black)),
                  //           ],
                  //         ),
                  //       ),
                  //       Text(
                  //           "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].price}",
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               fontFamily: 'Inter',
                  //               fontWeight: FontWeight.w500,
                  //               color: Colors.black)),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
      );
    } else {
      //var addOnlist = Provider.of<addOn>(context);
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                              Row(
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
                                                    .groupOptionList![
                                                        data?[selected]
                                                            .items?[
                                                                selectedSubCat]
                                                            .items?[index]
                                                            .itemGroupOptions]![
                                                        index3]
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
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Text(
                            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index3].items![index2].price}",
                            style: TextStyle(
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
  }

  choiceLanguage(int selected, int selectedSubCat, int index, int index2) {
    var Language = context.watch<provider_Language>().Language;
    print(Language);

    if (Language == "EN") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      return Container(
        child: Text(
          "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    }
    if (Language == "TH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionTh}" !=
          null) {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionTh}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
    }

    if (Language == "JP") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionJa}" !=
          null) {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionJa}",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
    }
    if (Language == "ZH") {
      final postModel = Provider.of<provider_api_Manu>(context);
      var data = postModel.post?.data;
      if ("${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionCn}" !=
          null) {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].questionCn}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      } else {
        return Container(
          child: Text(
            "${postModel.post!.groupOptionList![data?[selected].items?[selectedSubCat].items?[index].itemGroupOptions]![index2].question}",
            style: const TextStyle(
              fontSize: 35,
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
    //print("clecaaddon");
    //print(chooseAddon);
  }

  bool cleccheckbox(bool value) {
    value = false;
    return value;
  }
}

class RadioOptionLocation<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const RadioOptionLocation({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    print("boss$isSelected");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color:
                isSelected ? Color.fromARGB(255, 255, 110, 110) : Colors.white,
          ),
          child: Center(
            child: Icon(
              Icons.done,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }

  // Widget _buildText() {
  //   return Text(
  //     text,
  //     style: const TextStyle(color: Colors.black, fontSize: 24),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        //splashColor: Colors.teal.withOpacity(0.5),

        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              //const SizedBox(width: 10),
              //_buildText(),
            ],
          ),
        ),
      ),
    );
  }
}
