import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import '../models/provider_app.dart';

class display_total extends StatefulWidget {
  @override
  State<display_total> createState() => _display_totalState();
}

class _display_totalState extends State<display_total> {
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;
    //var toto3 = context.watch<provider_app>().totalAmount;
    double vat = 7;
    double service_charge = 10;
    double TotoAddOn = 0.0;
    double toto = 0.0;
    double totoaddon = 0.0;
     int a ;
      var toto3 = 0.0;
    

    for (var i = 0; i < tasks.length; i++) {
      toto += tasks[i].price! * tasks[i].amount;
      a=i;
      for(var b = 0; b < tasks[a].addonSelect.length; b++){
         TotoAddOn += tasks[a].addonSelect[b].price;
        

      }
      
      

    }

    double TotalPriceBeforeTotal = toto + TotoAddOn;
    double totoserviceCharge = TotalPriceBeforeTotal * (service_charge / 100);
    double TotalPriceBeforeTotalch = TotalPriceBeforeTotal + totoserviceCharge;
    double totvat = TotalPriceBeforeTotalch * (vat / 100);

    double Grand_Total = toto + totvat + totoserviceCharge;

    initState() {
      sendtoto(Grand_Total);
    }

    sendtoto(Grand_Total);

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suntotal',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  '$TotalPriceBeforeTotal' + '.-',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 7),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Charge',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  '$totoserviceCharge' + '.-',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 7),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'VAT',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  '${totvat.toStringAsFixed(1)}' + '.-',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 9),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: Theme.of(context).textTheme.subtitle1!.merge(
                        const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                ),
                Text(
                  '$Grand_Total' + '.-',
                  style: Theme.of(context).textTheme.subtitle1!.merge(
                        const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  sendtoto(double toto) {
    if (toto != 0) {
      setState(() {
        context.read<provider_payment>().save_Total(toto);
        
      });
    }
  }
}
