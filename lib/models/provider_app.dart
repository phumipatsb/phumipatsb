import 'package:flutter/foundation.dart';
import 'package:test1/material_new_order/compronan.dart';

class provider_app with ChangeNotifier {
  List<tasks1> tasks = [];
  List<tasks1> get _tasks => List.unmodifiable(tasks);

  List<addonofs> addonSelect =[];
  List<addonofs> get _taddonofs => List.unmodifiable(addonSelect);

  // List<addonofs> addonp=[];
  // List<addonofs> get _addonp => List.unmodifiable(addonp);
  
  // void addAddon(addonofs text) {
  //   addonp.add(text);
  //   notifyListeners();

  //   // for(i in tasks){
  //   //   print(i);
  //   // }
  // }

  List<addonofs> get addno2 {
    return [..._taddonofs];
  }
  


  void add(tasks1 text) {
    tasks.add(text);
    notifyListeners();

    // for(i in tasks){
    //   print(i);
    // }
  }

  void edit(int index, newtext) {
    tasks[index] = newtext;
    notifyListeners();
  }
  void deleteaddon(int index) {
    addonSelect.removeAt(index);
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

class addOn with ChangeNotifier {
  final List<addon> _addon = [
    addon(nameaddon: 'Size', checkboxstatus: true, Subaddon: [
      SubAddOnDetail(subNameAddOn: 'XL', priceAddOn: 20, check_status: false),
      SubAddOnDetail(subNameAddOn: 'L', priceAddOn: 15, check_status: false),
      SubAddOnDetail(subNameAddOn: 'M', priceAddOn: 10, check_status: false),
      SubAddOnDetail(subNameAddOn: 'S', priceAddOn: 15, check_status: false),
      SubAddOnDetail(subNameAddOn: 'S1', priceAddOn: 15, check_status: false),
    ]),
    addon(nameaddon: 'Add On',checkboxstatus: false, Subaddon: [
      SubAddOnDetail(subNameAddOn: 'ไข่ดาว', priceAddOn: 10, check_status: false),
      SubAddOnDetail(subNameAddOn: 'ไข่เจียว', priceAddOn: 15, check_status: false),
      SubAddOnDetail(subNameAddOn: 'ไข่ตุ่น', priceAddOn: 10, check_status: false),
    ]),
    addon(nameaddon: 'เครื่องปรุง',checkboxstatus: false, Subaddon: [
      SubAddOnDetail(subNameAddOn: 'พริก', priceAddOn: 10, check_status: false),
      SubAddOnDetail(subNameAddOn: 'น้ำตาล', priceAddOn: 15, check_status: false),
      SubAddOnDetail(subNameAddOn: 'น้ำปลา', priceAddOn: 10, check_status: false),
    ]),
    addon(nameaddon: 'เครื่องเคียง',checkboxstatus: false, Subaddon: [
      SubAddOnDetail(subNameAddOn: 'ผัก', priceAddOn: 10, check_status: false),
      SubAddOnDetail(subNameAddOn: 'กุญเชียง', priceAddOn: 15, check_status: false),
      SubAddOnDetail(subNameAddOn: 'แมว', priceAddOn: 10, check_status: false),
    ]),
  ];

  List<addon> get addno1 {
    return [..._addon];
  }

  

  
}
