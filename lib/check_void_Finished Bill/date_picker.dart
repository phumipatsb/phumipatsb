
// import 'package:flutter/material.dart';
// import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
// import 'package:localization/localization.dart';


// class picke extends StatefulWidget {
//   @override
//   _pickeState createState() => _pickeState();
// }

// class _pickeState extends State<picke> {
//   DateTime? _selectedDate;
  
//   var DateFormat;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//             begin: FractionalOffset.topCenter,
//             end: FractionalOffset.bottomCenter,
//             colors: [
//               Colors.grey[900]!,
//               Colors.black,
//             ],
//             stops: const [0.7, 1.0],
//           )),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: DatePickerWidget(
//                     looping: false, // default is not looping
//                     firstDate: DateTime.now(), //DateTime(1960),
//                     //  lastDate: DateTime(2002, 1, 1),
// //              initialDate: DateTime.now(),// DateTime(1994),
//                     dateFormat:
//                         // "MM-dd(E)",
//                         "dd/MMMM/yyyy",
//                      locale: DatePicker.localeFromString('th'),
//                     onChange: (DateTime newDate, _) {
//                       setState(() {
//                         _selectedDate = newDate;
//                       });
//                       print(_selectedDate);
//                     },
//                     pickerTheme: DateTimePickerTheme(
//                       backgroundColor: Colors.transparent,
//                       itemTextStyle:
//                           TextStyle(color: Colors.white, fontSize: 19),
//                       dividerColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Text("${_selectedDate ?? ''}"),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//     //var locale = "zh";
//     // return SafeArea(
//     //   child: Scaffold(
//     //     body: Center(
//     //       child: DatePickerWidget(
//     //         locale: //locale == 'zh'
//     //             DateTimePickerLocale.zh_cn
//     //             //  DateTimePickerLocale.en_us
//     //         ,
//     //         lastDate: DateTime.now(),
//     //         // dateFormat: "yyyy : MMM : dd",
//     //         // dateFormat: 'yyyy MMMM dd',
//     //         onChange: (DateTime newDate, _) {
//     //           setState(() {
//     //             var dob = newDate.toString();
//     //             print(dob);
//     //           });
//     //         },
//     //         pickerTheme: DateTimePickerTheme(
//     //           backgroundColor: Colors.transparent,
//     //           dividerColor: const Color(0xffe3e3e3),
//     //           itemTextStyle: TextStyle(
//     //             fontFamily: 'NotoSansTC',
//     //             fontSize: 18,
//     //             fontWeight: FontWeight.w500,
//     //             color: Theme.of(context).primaryColor,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // );
//   }
// }