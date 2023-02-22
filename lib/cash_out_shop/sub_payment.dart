import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/provider_app.dart';

import '../RAW/coloer/hex.dart';

class sub_payment_page extends StatefulWidget {
  sub_payment_page({
    Key? key,
  }) : super(key: key);

  @override
  State<sub_payment_page> createState() => _sub_payment_page();
}

class _sub_payment_page extends State<sub_payment_page> {
  String? _groupValue;
  String? _groupValue1;
  
 

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() {
          _groupValue = value!;
          

          print('Location  : $value');
          context.read<provider_payment>().save_Location(value);
         

        });
  }

  ValueChanged<String?> _valueChangedHandler1() {
    return (value) => setState(() {
          _groupValue1 = value!;
          print('Payment  : $value');
          context.read<provider_payment>().save_Payment(value);
        });
  }

  @override
  Widget build(BuildContext context) {
    String selected_sub_cat = context.watch<provider_payment>().Location;
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: HexColor(backgroundpayment),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Dining Location",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: HexColor(textpaymam))),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70, 50, 70, 30),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 30, 0, 20),
                                    child: Container(
                                      child: Text("Eat In",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: HexColor(textpaymam))),
                                    ),
                                  ), //link to neworder()
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 30, 30, 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color: Colors.black12),
                                    child: RadioOptionLocation<String>(
                                      value: 'Eat In',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'Eat In',
                                      text: 'One',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 30, 0, 20),
                                    child: Container(
                                      child: Text("Take Out",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: HexColor(textpaymam))),
                                    ),
                                  ), //link to neworder()
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 30, 30, 30),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color: Colors.black12),
                                    child: RadioOptionLocation<String>(
                                      value: 'Take Out',
                                      groupValue: _groupValue,
                                      onChanged: _valueChangedHandler(),
                                      label: 'Take Out',
                                      text: 'One',
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
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                          child: Container(
                            child: Text("Choose Payment",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    color: HexColor(textpaymam))),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30, 20, 20, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 20, 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                  color: Colors.white),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              20, 30, 20, 30),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                            color:
                                                                Colors.black12),
                                                        child:
                                                            RadioOptionPayment<
                                                                String>(
                                                          value: 'Pay at counter',
                                                          groupValue:
                                                              _groupValue1,
                                                          onChanged1:
                                                              _valueChangedHandler1(),
                                                          label: 'Pay at counter',
                                                          text: 'One',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    fit: FlexFit.tight,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 0, 0, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                        ),
                                                        child: Text(
                                                            "Pay at counter",
                                                            style: TextStyle(
                                                                fontSize: 25,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: HexColor(
                                                                    textpaymam))),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 0, 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                  color: Colors.white),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              20, 30, 20, 30),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                            color:
                                                                Colors.black12),
                                                                child:
                                                            RadioOptionPayment<
                                                                String>(
                                                          value: 'Scan To Pay',
                                                          groupValue:
                                                              _groupValue1,
                                                          onChanged1:
                                                              _valueChangedHandler1(),
                                                          label: 'Scan To Pay',
                                                          text: 'One',
                                                        ),
                                                                
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    fit: FlexFit.tight,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 0, 0, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0),
                                                        ),
                                                        child: Text(
                                                            "Scan To Pay",
                                                            style: TextStyle(
                                                                fontSize: 25,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: HexColor(
                                                                    textpaymam))),
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
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 190,
          height: 190,
          decoration: BoxDecoration(
            color:
                isSelected ? Color.fromARGB(255, 255, 110, 110) : Colors.white,
          ),
          child: Center(
            child: Icon(
              Icons.done,
              color: Colors.white,
              size: 150,
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

class RadioOptionPayment<B> extends StatelessWidget {
  final B value;
  final B? groupValue;
  final String label;
  final String text;
  final ValueChanged<B?> onChanged1;

  const RadioOptionPayment({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged1,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color:
                isSelected ? Color.fromARGB(255, 255, 110, 110) : Colors.white,
          ),
          child: Center(
            child: Icon(
              Icons.done,
              color: Colors.white,
              size: 45,
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
        onTap: () => onChanged1(value),
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
