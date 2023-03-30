import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:flutter/services.dart';

import 'package:test1/RAW/coloer/hex.dart';
import 'package:test1/SideBar/leftside.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:test1/main_order/close_shift.dart';
import '../material_new_order/date_month_year.dart';
import '../models/provider_app.dart';
import '../pull_from_api/provider_Api.dart';
import '../sumneworder.dart';

class main_order extends StatefulWidget {
  @override
  _main_order createState() => _main_order();
}

class _main_order extends State<main_order> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final shiftlist =
        Provider.of<bill_list_ProviderApi>(context, listen: false);
    shiftlist.get_data_bill_list_ProviderApi();
    final bill_shift_data =
        Provider.of<close_shift_ProviderApi>(context, listen: false);
    bill_shift_data.GetDatabillshift();
  }

  Widget build(BuildContext context) {
    final Shift_list = Provider.of<bill_list_ProviderApi>(context);
    final bill_shift_data = Provider.of<close_shift_ProviderApi>(context);
    String cdate2 = DateFormat("dd  MMMM yyyy").format(DateTime.now());
    return Scaffold(
        body: Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  // ignore: sort_child_properties_last
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: HexColor(backgroundColor),
                        ),
                        child: leftside(),
                      ),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Center(
                            child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 5, 0),
                                          child: Container(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 146,
                                                  height: 43,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Color.fromARGB(
                                                            255,
                                                            255,
                                                            111,
                                                            111), // background
                                                      ),
                                                      child: Text("Open Draw",
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
                                                SizedBox(width: 10),
                                                Container(
                                                  width: 146,
                                                  height: 43,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return AlertDialog(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(32.0))),
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        top:
                                                                            10.0),
                                                                content: StatefulBuilder(
                                                                    builder:
                                                                        (context,
                                                                            setState) {
                                                                  return Container(
                                                                    width: 500,
                                                                    height: 600,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .stretch,
                                                                      children: <
                                                                          Widget>[
                                                                        Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              15,
                                                                              15,
                                                                              15,
                                                                              15),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Container(
                                                                              height: 45,
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: HexColor(Shift1)),
                                                                              child: const Center(
                                                                                child: Text("Unfinished Orders", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.white)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              8,
                                                                              0,
                                                                              8,
                                                                              0),
                                                                          child:Container(
                                                                                        width: 480,
                                                                                        height: 452,
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Finished Orders", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.finishedOrders}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Unfinished Orders", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.unfinishedOrders}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            const Divider(
                                                                                              height: 10,
                                                                                              thickness: 2,
                                                                                              indent: 0,
                                                                                              endIndent: 0,
                                                                                              color: Colors.black,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Cash", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.paymentCash}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Credit Card", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.paymentCred}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Prompt Pay", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.paymentProm}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Transfer", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("0", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            const Divider(
                                                                                              height: 10,
                                                                                              thickness: 2,
                                                                                              indent: 0,
                                                                                              endIndent: 0,
                                                                                              color: Colors.black,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Subtotal", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.subtotal}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Discount", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.discount}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Service Charge", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.serviceCharge}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Vat", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.vat}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                                                                              child: Container(
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Text("Misc", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black)),
                                                                                                    Text("${bill_shift_data.billpost?.misc}", style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400, color: Colors.black))
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            
                                                                                            
                                                                                          ],
                                                                                        ),
                                                                                      )
                                                                              
                                                                        ),

                                                                        Container(
                                                                          child: Row(
                                                                            children: [

                                                                              Container(
                                                                                width: 250,
                                                                                child: InkWell(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              padding: EdgeInsets.only(top: 18, bottom: 20),
                                                                              decoration: BoxDecoration(
                                                                                color: HexColor(confi),
                                                                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(0)),
                                                                              ),
                                                                              child: Text(
                                                                                "Confirm",
                                                                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                                                                                textAlign: TextAlign.center,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                              ),

                                                                              Container(
                                                                                width: 250,
                                                                                child: InkWell(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              padding: EdgeInsets.only(top: 18, bottom: 20),
                                                                              decoration: BoxDecoration(
                                                                                color: HexColor(Cancel),
                                                                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(32.0)),
                                                                              ),
                                                                              child: Text(
                                                                                "Cancel",
                                                                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                                                                                textAlign: TextAlign.center,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                              ),
                                                                              

                                                                            ],
                                                                          ),
                                                                        ),
                                                                        
                                                                        // InkWell(
                                                                        //   child:
                                                                        //       GestureDetector(
                                                                        //     onTap:
                                                                        //         () {
                                                                        //       setState(() {});
                                                                        //       Navigator.pop(context);
                                                                        //     },
                                                                        //     child:
                                                                        //         Container(
                                                                        //       padding: EdgeInsets.only(top: 18, bottom: 20),
                                                                        //       decoration: BoxDecoration(
                                                                        //         color: HexColor(confi),
                                                                        //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(32.0)),
                                                                        //       ),
                                                                        //       child: Text(
                                                                        //         "Confirm",
                                                                        //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                                                                        //         textAlign: TextAlign.center,
                                                                        //       ),
                                                                        //     ),
                                                                        //   ),
                                                                        // ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            });
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Color.fromARGB(
                                                            255,
                                                            255,
                                                            111,
                                                            111), // background
                                                      ),
                                                      child: Text("Close Shift",
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
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 15,
                                      fit: FlexFit.tight,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: HexColor(backgroundColor),
                                          ),
                                          child: Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                child: ListView.builder(
                                                  shrinkWrap: false,
                                                  itemCount: Shift_list
                                                      .post3?.datas?.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    String? dater;
                                                     dater = Shift_list.post3?.datas![index].purchaseDate;
                                                     String? result = dater!.substring(0, dater.indexOf(','));
                                                    return Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  5, 10, 5, 10),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                              color: ChangeColor(
                                                                  "${Shift_list.post3?.datas![index].status}"),
                                                            ),
                                                            height: 110,
                                                            child: Row(
                                                              children: [
                                                                Flexible(
                                                                  flex: 1,
                                                                  fit: FlexFit
                                                                      .tight,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Column(
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                        "${Shift_list.post3?.datas![index].tableZone} ${Shift_list.post3?.datas![index].tableName}",
                                                                        style: Theme.of(context)
                                                                                .textTheme
                                                                                .subtitle1!
                                                                                .merge(
                                                                                  const TextStyle(
                                                                                    fontSize: 22,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ),
                                                                      ),
                                                                      SizedBox(height: 10,),
                                                                      Text(
                                                                        "${Shift_list.post3?.datas![index].billingId} ",
                                                                        style: Theme.of(context)
                                                                                .textTheme
                                                                                .subtitle1!
                                                                                .merge(
                                                                                  const TextStyle(
                                                                                    fontSize: 22,
                                                                                    fontWeight: FontWeight.w400,
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
                                                                  fit: FlexFit
                                                                      .tight,
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                          child:
                                                                              Text(
                                                                        '${Shift_list.post3?.datas![index].purchaseDateDatetime?.hour}:${Shift_list.post3?.datas![index].purchaseDateDatetime?.minute}:${Shift_list.post3?.datas![index].purchaseDateDatetime?.second}',
                                                                        overflow:
                                                                            TextOverflow.visible,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style:
                                                                            // ignore: prefer_const_constructors
                                                                            TextStyle(
                                                                          fontSize:
                                                                              23,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),

                                                                          
                                                                        ),
                                                                      )),
                                                                      Container(
                                                                        
                                                                          child:
                                                                              Text(
                                                                        result,
                                                                        overflow:
                                                                            TextOverflow.visible,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style:
                                                                            // ignore: prefer_const_constructors
                                                                            TextStyle(
                                                                          fontSize:
                                                                              23,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),

                                                                          
                                                                        ),
                                                                      )),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  flex: 1,
                                                                  fit: FlexFit
                                                                      .tight,
                                                                  child:
                                                                      Container(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.fromLTRB(
                                                                              60,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        "${Shift_list.post3?.datas![index].total}",
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .subtitle1!
                                                                            .merge(
                                                                              const TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )))),
                  ],
                  //mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  ChangeColor(String status) {
    print(status);
    switch (status) {
      case 'Status.FIN':
        // print('Ordering');
        return Colors.yellow;
        break; // The switch statement must be told to exit, or it will execute every case.
      case 'Status.ORD':
        // print('Pay');
        return Colors.blue;
        break;
      default:
        // print('');
        return Colors.white;
    }
  }
}
