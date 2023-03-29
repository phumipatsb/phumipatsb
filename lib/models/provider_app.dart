import 'package:flutter/foundation.dart';

import 'compronan.dart';

class provider_app with ChangeNotifier {
  List<tasks1> tasks = [];
  List<tasks1> get _tasks => List.unmodifiable(tasks);

  // List<addonofs> addonSelect = [];
  // List<addonofs> get _taddonofs => List.unmodifiable(addonSelect);

  List<send> tasks2 = [];
  List<send> get _tasks2 => List.unmodifiable(tasks2);

  int index1 = 0;
  int index2 = 0;

  

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

  // void deleteaddon(int id) {
  //   addonSelect.removeWhere((item) => item.ID == id);
  //   print(addonSelect);
  //   notifyListeners();
  // }

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
  String name = 'login';

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
  String seNumberPeople = '';

  void ZoneNameSelect(String select) {
    zoneNameSelect = select;
    notifyListeners();
  }

  void SubZoneNameSelect(String select) {
    subZoneNameSelect = select;
    notifyListeners();
  }
  void NumberPeopleSelect(String select) {
    seNumberPeople= select;
    notifyListeners();
  }
}


class SelectMember with ChangeNotifier{
  String name = '';
  String telephone= ''; 
  int Point=0;
  String IdMamber = '';
  bool status_Select_Member = false;

  void updaet_status_Select_Member(bool newtext1) {
    status_Select_Member = newtext1;
    notifyListeners();
  }


  void updarttasks_Select_name(String name1 ,String telephone1,int Point1,String IdMamber1 ) {
   name = name1;
   telephone= telephone1; 
   Point=Point1;
   IdMamber = IdMamber1;
     
    
    print("log 2");
    print(name);
    notifyListeners();
  }
}


class newmember with ChangeNotifier{
List<newmem_ber> new_member = [];

void addmember(newmem_ber text) {
    new_member.add(text);
    print("log 2");
    print(new_member);
    notifyListeners();
  }





}


