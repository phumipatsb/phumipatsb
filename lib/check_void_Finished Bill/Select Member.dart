import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/check_void_Finished%20Bill/Create_Member.dart';
import 'package:test1/models/compronan.dart';
import '../models/provider_app.dart';

class Select_Member_page extends StatefulWidget {
  @override
  State<Select_Member_page> createState() => Select_Member_pageState();
}

class Select_Member_pageState extends State<Select_Member_page> {
  String searchText = "";
  bool found = true;
  final textController = new TextEditingController();
  List<mamber> filteredItem = [];

  List<mamber> Items = [
    mamber(name: "boss", telephone: "0969174870", Point: 10, IdMamber: 1),
    mamber(name: "mos", telephone: "0962895803", Point: 30, IdMamber: 2),
    mamber(name: "mi", telephone: "0661140738", Point: 20, IdMamber: 3),
    mamber(name: "raek", telephone: "0962895803", Point: 50, IdMamber: 4),
    mamber(name: "mek", telephone: "0928093088", Point: 45, IdMamber: 5),
    mamber(name: "mim", telephone: "0637207901", Point: 20, IdMamber: 6),
    mamber(name: "too", telephone: "0638058119", Point: 35, IdMamber: 7),
    mamber(name: "true", telephone: "0856728303", Point: 40, IdMamber: 8),
    mamber(name: "data", telephone: "0968727690", Point: 60, IdMamber: 9),
    mamber(name: "bass", telephone: "0956701479", Point: 70, IdMamber: 10),
    mamber(name: "top", telephone: "0982458790", Point: 80, IdMamber: 11),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredItem = Items;
    textController.addListener(() {
      if (textController.text.isEmpty) {
        setState(() {
          searchText = "";
          found = true;
          filteredItem = Items;
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
    List<mamber> tempList = [];
    if (!searchText.isEmpty) {
      for (int i = 0; i < Items.length; i++) {
        if (Items[i].name.toLowerCase().contains(searchText.toLowerCase())) {
          tempList.add(Items[i]);
        }
        if (Items[i]
            .telephone
            .toLowerCase()
            .contains(searchText.toLowerCase())) {
          tempList.add(Items[i]);
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Container(
                          child: SvgPicture.asset(
                            'assets/images/Member.svg',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                        child: Text("Select Member",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/close.svg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 555,
            height: 45,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 45,
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Search member by name or telephone',
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
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                contentPadding: EdgeInsets.only(top: 10.0),
                                content: StatefulBuilder(
                                    builder: (context, setState) {
                                  return Container(
                                    width: 700,
                                    height: 600,
                                    child: Create_Member(),
                                  );
                                }));
                          });
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    child: SvgPicture.asset(
                      'assets/images/add.svg',
                      height: 45,
                      width: 45,
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 430,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: found
              ? ListView.builder(
                  itemCount: filteredItem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            context
                                .read<SelectMember>()
                                .updarttasks_Select_name(
                                    "${filteredItem[index].name}",
                                    "${filteredItem[index].telephone}",
                                    filteredItem[index].Point,
                                    "${filteredItem[index].IdMamber}");

                            context
                                .read<SelectMember>()
                                .updaet_status_Select_Member(true);
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: 200,
                          height: 80,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? HexColor(file1)
                                  : HexColor(file2),
                              borderRadius: BorderRadius.circular(0)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  child: SvgPicture.asset(
                                    'assets/images/name.svg',
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                                Text(
                                  filteredItem[index].name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  filteredItem[index].telephone,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })
              : Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Not Available",
                    style: TextStyle(color: Colors.black, fontSize: 23),
                  ),
                ),
        )
      ],
    );
  }
}
