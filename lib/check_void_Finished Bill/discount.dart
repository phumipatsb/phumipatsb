import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class discount_page extends StatefulWidget {
  const discount_page({super.key});

  @override
  State<discount_page> createState() => _discount_pageState();
}


List<String> discountitem = [
  '30% discount on Food',
  '20% discount on Drink',
  'Buy 2 getfree Salad',
  "10% Discount on food " 
];

class _discount_pageState extends State<discount_page> {
  String searchText = "";
  bool found = true;
  final textController = new TextEditingController();
  List<String> filteredItem = [];
  bool st5 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredItem = discountitem;
    textController.addListener(() {
      if (textController.text.isEmpty) {
        setState(() {
          searchText = "";
          found = true;
          filteredItem = discountitem;
        });
      } else {
        setState(() {
          searchText = textController.text.trim();
        });
        searchFunc();

        /// Function for checking the items in List
      }
    });
  }

  void searchFunc() {
    List<String> tempList = [];
    if (!searchText.isEmpty) {
      for (int i = 0; i < discountitem.length; i++) {
        if (discountitem[i].toLowerCase().contains(searchText.toLowerCase())) {
          tempList.add(discountitem[i]);
        }
        
      }
      setState(() {
        found = true;
        filteredItem = tempList;
      });
    }
    if (filteredItem.isEmpty) {
      setState(() {
        found = false;
      });
    }
  }





  Widget build(BuildContext context) {
    return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 0, 5),
                                                        child: Flexible(
                                                          flex: 1,
                                                          fit: FlexFit.tight,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .fromLTRB(
                                                                          20,
                                                                          10,
                                                                          20,
                                                                          0),
                                                                  child:
                                                                      Expanded(
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Discount.svg',
                                                                      height:
                                                                          25,
                                                                      width: 25,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                      "Discount",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          color:
                                                                              Colors.black)),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        flex: 4,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                            
                                                          ),
                                                          child:ListView.builder(
                                        itemCount: filteredItem.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Container(
                                              height: 60,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: Row(
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
                                     print("object");
                                    }
                                    if (value == false) {
                                     
                                    } else {}
                                   
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
                  child: Text(
                                  filteredItem[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                )


                                                ],
                                              )
                                            ),
                                          );
                                        },
                                      ) 
                                                        ),
                                                      ),
                                                      Flexible(
                                                        flex: 2,
                                                        fit: FlexFit.tight,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        16),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        16)),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        10,
                                                                        5,
                                                                        10,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/gift.svg',
                                                                    height: 35,
                                                                    width: 35,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0,
                                                                        5,
                                                                        8,
                                                                        0),
                                                                child: Container(
                                                                    height: 35,
                                                                    width: 225,
                                                                    child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Gift Code',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.pink.shade300),
                      ),
                    ),
                  ),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/find.svg',
                                                                    height: 35,
                                                                    width: 35,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),

                                                      
                                                    ],
                                                  );
  }

  bool cleccheckbox(bool value) {
    value = false;
    return value;
  }
}