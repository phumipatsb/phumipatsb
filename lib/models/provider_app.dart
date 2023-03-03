import 'package:flutter/foundation.dart';

import 'compronan.dart';

class provider_app with ChangeNotifier {
  List<tasks1> tasks = [];
  List<tasks1> get _tasks => List.unmodifiable(tasks);

  List<addonofs> addonSelect = [];
  List<addonofs> get _taddonofs => List.unmodifiable(addonSelect);

  List<send> tasks2 = [];
  List<send> get _tasks2 => List.unmodifiable(tasks2);

  int index1 = 0;
  int index2 = 0;

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

  void edit(int newtext) {
    index1 = newtext;
    notifyListeners();
  }

  void edit1(int newtext) {
    index2 = newtext;
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



class provider_payment with ChangeNotifier {
  String Location = '';
  String Payment = '';
  double sendTotal = 0;
  bool stpy = false;

  void save_Location(String newtext1) {
    Location = newtext1;
    notifyListeners();
  }

  void save_Payment(String newtext2) {
    Payment = newtext2;
    notifyListeners();
  }

  void save_Total(double newtext3) {
    sendTotal = newtext3;
    print("sendTotal $sendTotal");
  }

  void updaet_st(bool newtext4) {
    stpy = newtext4;
    print("sendTotal $stpy");
    notifyListeners();
  }
}

class provider_Language with ChangeNotifier {
  String Language = "EN";

  void updaet_Language(String newtext1) {
    Language = newtext1;
    notifyListeners();
  }



}

class provider_login with ChangeNotifier {
  bool status_login = false;
  String name ='';

  void updaet_status_login(bool newtext1) {
    status_login = newtext1;
    notifyListeners();
  }

  void updaet_login_name(String newtext1) {
    name = newtext1;
    notifyListeners();
  }



}

class provider_table with ChangeNotifier {
  String zoneNameSelect = '';
  String subZoneNameSelect = '';

  void ZoneNameSelect(String select) {
    zoneNameSelect = select;
    notifyListeners();
  }

  void SubZoneNameSelect(String select) {
    subZoneNameSelect = select;
    notifyListeners();
  }
}




