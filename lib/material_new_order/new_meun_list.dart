import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import 'compronan.dart';

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
 
  List<addonofs> chooseAddon = [];
  
  bool checkboxValue = false;
  int y = 10;
  TextEditingController textarea = TextEditingController();

  final item = <dynamic>[
    Productprice(
        statusaddno: true,
        categoriesproduct: 'Food',
        productname: 'Pad Thai',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 255),
    Productprice(
        statusaddno: false,
        categoriesproduct: 'Food',
        productname: 'PSpicy fried chicken',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_item/ข้าวกระเพราไก่_VVLSQJ8S3XHM.jpg',
        price: 220),
    Productprice(
        statusaddno: true,
        categoriesproduct: 'Curries',
        productname: 'Sun-dried shrimp salad',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/905cf51f8ae04225d8794e7707be5d97_XL.jpg',
        price: 75),
    Productprice(
        statusaddno: false,
        categoriesproduct: 'Salad',
        productname: ' Chicken Green Curry',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/be2c0e4bc68e97336862a76636fd8047_XL.jpg',
        price: 100),
    Productprice(
        statusaddno: true,
        categoriesproduct: 'Soup',
        productname: ' Chicken Green Curry',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/600085de8ec319c3ad7a50be991624bf_XL.jpg',
        price: 130),
  ];

  @override
  Widget build(BuildContext context) {
    return

        // backgroundColor: HexColor(backgroundColor),
        Scrollbar(
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
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            bool st;
            var tasks = context.read<provider_app>().tasks;
            var tasks2 = context.read<provider_app>().tasks2;
            var addOnlist = Provider.of<addOn>(context);
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
                      print(index);

                      if (item[index].statusaddno == true) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Container(
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
                                        itemCount: addOnlist.addno1.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    "${addOnlist.addno1[index].nameaddon}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .merge(
                                                          const TextStyle(
                                                            fontSize: 35,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 10,
                                                  thickness: 2,
                                                  indent: 0,
                                                  endIndent: 0,
                                                  color: Color.fromARGB(
                                                      255, 255, 110, 110),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                choiceoptions(
                                                    addOnlist.addno1[index]
                                                        .checkboxstatus,
                                                    index),
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
                                              fontWeight: FontWeight.w500,
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
                                                  TextInputType.multiline,
                                              maxLines: 4,
                                              autocorrect: true,
                                              decoration: InputDecoration(
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                                filled: true,
                                                fillColor: Colors.white70,
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        10, 0, 0, 0),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8.0)),
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8.0)),
                                                  borderSide: BorderSide(
                                                      color: Colors.green),
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
                                                  print(textarea.text);
                                                  setState(
                                                    () {
                                                      context
                                                          .read<provider_app>()
                                                          .addtasks1(
                                                            tasks1(
                                                              name:
                                                                  "${item[index].productname}",
                                                              price: item[index]
                                                                  .price,
                                                              images:
                                                                  "${item[index].image}",
                                                              addonSelect:
                                                                  chooseAddon,
                                                            ),
                                                          );

                                                      clecaaddon();
                                                    },
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color.fromARGB(
                                                      255,
                                                      255,
                                                      111,
                                                      111), // background
                                                ),
                                                child: Text("Confirm",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        setState(
                          () {
                            print('boss');
                            
                            context.read<provider_app>().addtasks1(
                                  tasks1(
                                    name: "${item[index].productname}",
                                    price: item[index].price,
                                    images: "${item[index].image}",
                                    addonSelect: [],
                                  ),
                                );
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
                            "${item[index].image}",
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
                                "${item[index].productname}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .merge(
                                      const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "${item[index].price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .merge(
                                      TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey.shade500,
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

  choiceoptions(bool status, int indexs) {
    if (status == true) {
      var addOnlist = Provider.of<addOn>(context);
      var _result;
      var _selectedOption;
      int b=0;
      
      return Container(
       
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: addOnlist.addno1[indexs].Subaddon.length,
            itemBuilder: (BuildContext context, int index2) {
              return Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Align(
                    //   alignment: AlignmentDirectional(10, 0),
                      
                    //   child: Container(
                    //     width: 100,
                    //     height: 50,
                    //     child: RadioListTile(title: Text("${addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn}"),
                    //     value: addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn,
                    //     groupValue: _oneValue,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _oneValue = value.toString();
                    //       });
                    //     },)
                    //   ),
                    // ),
                    Container(
                      width: 450,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Container(
                          //   width: 200,
                          //   height: 50,
                          //   child: LabeledRadio(
                          //     label: 'This is the first label text',
                          //     padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          //     value: true,
                          //     groupValue: _isRadioSelected,
                          //     onChanged: (bool newValue) {
                          //       setState(() {
                          //         _isRadioSelected = newValue;
                          //       });
                          //     },

                          //   ),
                          // ),
                          // Text(
                          //     "${addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn}",
                          //     style: TextStyle(
                          //         fontSize: 20,
                          //         fontFamily: 'Inter',
                          //         fontWeight: FontWeight.w500,
                          //         color: Colors.black)),
                          Text(
                              "${addOnlist.addno1[indexs].Subaddon[index2].priceAddOn}",
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
    } else {
      var addOnlist = Provider.of<addOn>(context);
      return Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: addOnlist.addno1[indexs].Subaddon.length,
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
                                    
                                    value: addOnlist.addno1[indexs]
                                        .Subaddon[index2].check_status,
                                    onChanged: (bool? value) {
                                      setState(
                                        () {
                                          addOnlist
                                              .addno1[indexs]
                                              .Subaddon[index2]
                                              .check_status = value!;
                                          state.didChange(value);
                                          

                                          if (value == true) {
                                            
                                            (chooseAddon.add(addonofs(
                                                price: addOnlist
                                                    .addno1[indexs]
                                                    .Subaddon[index2]
                                                    .priceAddOn,
                                                subNameAddOn:
                                                    "${addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn}",
                                                ID: addOnlist.addno1[indexs]
                                                    .Subaddon[index2].ID,
                                                nameaddon:
                                                    "${addOnlist.addno1[indexs].nameaddon}")));
                                            
                                          }
                                          if (value == false) {
                                            context
                                                .read<provider_app>()
                                                .deleteaddon(addOnlist
                                                    .addno1[indexs]
                                                    .Subaddon[index2]
                                                    .ID);
                                            deleteaddon(addOnlist.addno1[indexs]
                                                .Subaddon[index2].ID);
                                            print(chooseAddon);
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
                    width: 425,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn}",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Text(
                            "${addOnlist.addno1[indexs].Subaddon[index2].priceAddOn}",
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

  void deleteaddon(int id) {
    chooseAddon.removeWhere((item) => item.ID == id);
  }

  clecaaddon() {
    chooseAddon = [];
    print("clecaaddon");
    print(chooseAddon);
  }

  bool cleccheckbox(bool value) {
    value = false;
  return value;
  }

  void adddata() {}
  
  
}
