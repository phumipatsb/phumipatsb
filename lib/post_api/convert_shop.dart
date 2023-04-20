import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'shop_api.dart';

//final shop = shopFromJson(jsonString);
Future<Shop> createshop(String title) async {
  final response = await http.post(
    Uri.parse(
        'https://partner1.triggersplus.com/order/order_dining/MOBILE_ORDERING_1/api/'),
    body: jsonEncode(<String, dynamic>{
      'items': [
        {
          "name": "title",
          "names": {"en": "Cof01-Hot espresso"},
          "price": 50,
          "final_price": 50,
          "itemId": "117",
          "option_price": 0,
          "note": "",
          "metaTag": {
            "option_order": "Sweet:: 25%\n",
            "option_invoice": "Sweet:: 25%\n",
            "options": "Sweet:: 25%\n",
            "option_display": "Sweet:: 25%\n"
          },
          "amount": 1,
          "options": [], //*
          "options2": [] //*
        }
      ],
      "dining_mode": "RESTAURANT", //*
      "table": {"name": "1", "zone": "Table", "split": 0},
      "staff": {
        "password": "9999",
        "id": "2",
        "perm_make_order": true,
        "perm_print_check": true,
        "branch_id": "1",
        "perm_close_shift": true,
        "staff_id": "#002",
        "perm_cashier": true,
        "name": "Manager",
        "perm_void": true,
        "perm_manage_table": true,
        "perm_stock": true
      },
      "branch_id": "1", //*
      "guest_amount": 1,
      "note": "",
      "eat_date": "" //*
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print(response.body);
    return shopFromJson(response.body);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

// class GetDataFrombutton extends StatefulWidget {
//   const GetDataFrombutton({super.key});

//   @override
//   State<GetDataFrombutton> createState() => _GetDataFrombuttonState();
// }

// class _GetDataFrombuttonState extends State<GetDataFrombutton> {
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var _futureAlbum;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create Data Example'),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8.0),
//         child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
//       ),
//     );
//   }

//   Column buildColumn() {
//     var _futureAlbum;
//     final myController = TextEditingController();
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         TextField(
//           controller: myController,
//           decoration: const InputDecoration(hintText: 'Enter Title'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _futureAlbum = createshop(myController.text);
//             });
//           },
//           child: const Text('Create Data'),
//         ),
//       ],
//     );
//   }

//   FutureBuilder<Shop> buildFutureBuilder() {
//     return FutureBuilder(builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return Text(snapshot.data!.datas![0].items![0].id.toString());
//       } else if (snapshot.hasError) {
//         return Text('${snapshot.error}');
//       }

//       return const CircularProgressIndicator();
//     });
//   }
// }