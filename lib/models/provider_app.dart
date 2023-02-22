import 'package:flutter/foundation.dart';

import 'compronan.dart';


class provider_app with ChangeNotifier {
  List<tasks1> tasks = [];
  List<tasks1> get _tasks => List.unmodifiable(tasks);

  List<addonofs> addonSelect = [];
  List<addonofs> get _taddonofs => List.unmodifiable(addonSelect);

  List<send> tasks2 = [];
  List<send> get _tasks2 => List.unmodifiable(tasks2);

  int index1 =0;
  int index2 =0;

  // List<addonofs> get addno2 {
  //   return [..._taddonofs];
  // }

  void addtasks1(tasks1 text) {
    tasks.add(text);
    print("log 2");
    print(tasks);
    notifyListeners();

    
  }

  void addtasks2(send text) {
    tasks2.add(text);
    print("log 2");
    print(tasks2);
    notifyListeners();

    
  }

  void edit(  int newtext ) {
    index1 =newtext;
    notifyListeners();
  }
  void edit1(  int newtext ) {
    index2 =newtext;
    notifyListeners();
  }





  

  void deleteaddon(int id) {
    addonSelect.removeWhere((item) => item.ID == id);
    print(addonSelect);
    notifyListeners();
  }

  void delete(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void orderPlus(int index) {
    // amount = amount++;
    tasks.elementAt(index).amount++;
    notifyListeners();
  }

  void minusOrder(int index) {
    if (tasks.elementAt(index).amount <= 1) {
      return;
    }
    // amount = amount++;
    tasks.elementAt(index).amount--;
    notifyListeners();
  }

  void deleteOrder(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void clearAllOrder() {
    //tasks.clear;
    tasks = [];
    print(tasks);
    notifyListeners();
  }
}

class zoneName with ChangeNotifier {
  final List<zone> _zone = [
    zone(ZoneName: 'Zone A', SubZone: [
      SubZoneDetail(SubZoneName: 'A1', Status: ''),
      SubZoneDetail(SubZoneName: 'A1', Status: ''),
      SubZoneDetail(SubZoneName: 'A1', Status: ''),
      SubZoneDetail(SubZoneName: 'A1', Status: ''),
      SubZoneDetail(SubZoneName: 'A2', Status: ''),
      SubZoneDetail(SubZoneName: 'A2', Status: ''),
      SubZoneDetail(SubZoneName: 'A2', Status: ''),
      SubZoneDetail(SubZoneName: 'A3', Status: ''),
      SubZoneDetail(SubZoneName: 'A2', Status: ''),
    ]),
    zone(ZoneName: 'Zone B', SubZone: [
      SubZoneDetail(SubZoneName: 'A1', Status: ''),
      SubZoneDetail(SubZoneName: 'A2', Status: 'Pay')
    ]),
    zone(ZoneName: 'Zone C', SubZone: [
      SubZoneDetail(SubZoneName: 'B1', Status: 'Ordering'),
      SubZoneDetail(SubZoneName: 'B2', Status: 'Pay')
    ]),
  ];

  List<zone> get Zone {
    return [..._zone];
  }

  List<selectzone> _select = [];

  List<selectzone> get select {
    return [..._select];
  }

  String _zoneNameSelect = '';
  String _subZoneNameSelect = '';
  String get zoneNameSelect => _zoneNameSelect;
  String get subZoneNameSelect => _subZoneNameSelect;
  set zoneNameSelect(String select) {
    _zoneNameSelect = select;
    notifyListeners();
  }

  set subZoneNameSelect(String select) {
    _subZoneNameSelect = select;
    notifyListeners();
  }
}

// class addOn with ChangeNotifier {
//   final List<addon> _addon = [
//     addon(nameaddon: 'Size', checkboxstatus: true, Subaddon: [
//       SubAddOnDetail(
//           subNameAddOn: 'XL', priceAddOn: 20, check_status: false, ID: 1),
//       SubAddOnDetail(
//           subNameAddOn: 'L', priceAddOn: 15, check_status: false, ID: 2),
//       SubAddOnDetail(
//           subNameAddOn: 'M', priceAddOn: 10, check_status: false, ID: 3),
//       SubAddOnDetail(
//           subNameAddOn: 'S', priceAddOn: 15, check_status: false, ID: 4),
//       SubAddOnDetail(
//           subNameAddOn: 'S1', priceAddOn: 15, check_status: false, ID: 5),
//     ]),
//     addon(nameaddon: 'Add On', checkboxstatus: false, Subaddon: [
//       SubAddOnDetail(
//           subNameAddOn: 'ไข่ดาว', priceAddOn: 10, check_status: false, ID: 6),
//       SubAddOnDetail(
//           subNameAddOn: 'ไข่เจียว', priceAddOn: 15, check_status: false, ID: 7),
//       SubAddOnDetail(
//           subNameAddOn: 'ไข่ตุ่น', priceAddOn: 10, check_status: false, ID: 8),
//     ]),
//     addon(nameaddon: 'เครื่องปรุง', checkboxstatus: false, Subaddon: [
//       SubAddOnDetail(
//           subNameAddOn: 'พริก', priceAddOn: 10, check_status: false, ID: 9),
//       SubAddOnDetail(
//           subNameAddOn: 'น้ำตาล', priceAddOn: 15, check_status: false, ID: 10),
//       SubAddOnDetail(
//           subNameAddOn: 'น้ำปลา', priceAddOn: 10, check_status: false, ID: 11),
//     ]),
//     addon(nameaddon: 'เครื่องเคียง', checkboxstatus: false, Subaddon: [
//       SubAddOnDetail(
//           subNameAddOn: 'ผัก', priceAddOn: 10, check_status: false, ID: 12),
//       SubAddOnDetail(
//           subNameAddOn: 'กุญเชียง',
//           priceAddOn: 15,
//           check_status: false,
//           ID: 13),
//       SubAddOnDetail(
//           subNameAddOn: 'แมว', priceAddOn: 10, check_status: false, ID: 14),
//     ]),
//   ];

//   List<addon> get addno1 {
//     return [..._addon];
//   }
// }


class provider_payment with ChangeNotifier {


  String Location = '';
  String Payment = '';


  void save_Location(String newtext1 ) {
    Location =newtext1;
    notifyListeners();
  }

  void save_Payment(String newtext2 ) {
    Payment =newtext2;
    notifyListeners();
  }



}