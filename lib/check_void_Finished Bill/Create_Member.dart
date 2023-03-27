import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import 'date_picker.dart';
import 'radio_sex.dart';

import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class Create_Member extends StatefulWidget {
  @override
  State<Create_Member> createState() => _Create_MemberState();
}

class _Create_MemberState extends State<Create_Member> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  String? _groupValue;

  String DoB = "Date of Birth";
  final maxLines = 5;

  ValueChanged<String?> _valueChangedHandler() {
    // print(_groupValue);
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    //var Language = context.watch<provider_Language>().Language;
    var Language = "JP";
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Text("Create New Member",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/close.svg',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              width: double.infinity,
              height: 420,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: HexColor(textPriceColor), width: 5),
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(6, 20, 0, 0),
                              child: Container(
                                child: Row(
                                  children: [
                                    MyRadioOption<String>(
                                      value: 'male',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'A',
                                      text: 'One',
                                    ),
                                    MyRadioOption<String>(
                                      value: 'female',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'B',
                                      text: 'Two',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Container(
                                width: 120,
                                height: 190,
                                child: SvgPicture.asset(
                                  'assets/images/male_image.svg',
                                  width: 120,
                                  height: 190,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'assets/images/name.svg',
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Container(
                                        width: 350,
                                        height: 45,
                                        child: TextField(
                                          style: TextStyle(fontSize: 20),
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            filled: true,
                                            fillColor: Colors.white70,
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.black45,
                                                  width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.pink.shade300),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        child: SvgPicture.asset(
                                          'assets/images/Phone_Number.svg',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: 350,
                                          height: 45,
                                          child: TextField(
                                            style: TextStyle(fontSize: 20),
                                            controller: phoneController,
                                            decoration: InputDecoration(
                                              hintText: 'Phone Number',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              filled: true,
                                              fillColor: Colors.white70,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.black45,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.pink.shade300),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        child: SvgPicture.asset(
                                          'assets/images/Date_of_Birth.svg',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Container(
                                            width: 350,
                                            height: 45,
                                            child: GestureDetector(
                                              onTap: () async {
                                                var datePicked =
                                                    await DatePicker
                                                        .showSimpleDatePicker(
                                                  context,
                                                  initialDate: DateTime(200),
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2022),
                                                  dateFormat: "d,MMMM,yyyy",
                                                  locale: Language == "TH"
                                                      ? DateTimePickerLocale.th
                                                      : Language == "EN"
                                                          ? DateTimePickerLocale
                                                              .en_us
                                                          : Language == "JP"
                                                              ? DateTimePickerLocale
                                                                  .jp
                                                              : DateTimePickerLocale
                                                                  .zh_cn,
                                                  looping: true,
                                                );
                                                DateTime datetime =
                                                    DateTime.now();

                                                final snackBar = SnackBar(
                                                    content: Text(
                                                        "Date Picked $datePicked"));
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                                    
                                                String DAY = DateFormat.d()
                                                    .format(datePicked!);
                                                String MONTH = DateFormat.MMMM()
                                                    .format(datePicked);
                                                String YEAR = DateFormat.y()
                                                    .format(datePicked);
                                                String sumdate = (DAY +
                                                    "/" +
                                                    MONTH +
                                                    "/" +
                                                    YEAR);

                                                setState(() {
                                                  DoB = sumdate;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    '${DoB}',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        child: SvgPicture.asset(
                                          'assets/images/Email_Address.svg',
                                          height: 25,
                                          width: 35,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: 350,
                                          height: 45,
                                          child: TextField(
                                            style: TextStyle(fontSize: 20),
                                            controller: emailController,
                                            decoration: InputDecoration(
                                              hintText: 'email@email.com',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              filled: true,
                                              fillColor: Colors.white70,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.black45,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.pink.shade300),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 55,
                                        child: SvgPicture.asset(
                                          'assets/images/Note.svg',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: SizedBox(
                                          width: 350,
                                          height: 120,
                                          
                                          child: TextField(
                                            maxLines: maxLines,
                                            style: TextStyle(fontSize: 20),
                                            controller: noteController,
                                            decoration: InputDecoration(
                                              hintText: 'Note',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              filled: true,
                                              fillColor: Colors.white70,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color: Colors.black45,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                borderSide: BorderSide(
                                                    color:
                                                        Colors.pink.shade300),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                print(nameController.text);

                context.read<newmember>().addmember(newmem_ber(name: nameController.text, telephone: phoneController.text, date_of_birth: DoB, email: emailController.text, note: noteController.text,gender:_groupValue ));
                  Navigator.pop(context);                      
              });
            },
            child: Container(
              width: double.infinity,
              height: 73,
              padding: EdgeInsets.only(top: 18, bottom: 20),
              decoration: BoxDecoration(
                color: HexColor(confi),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0)),
              ),
              child: Text(
                "Confirm",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}
