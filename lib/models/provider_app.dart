import 'package:flutter/foundation.dart';

import 'package:test1/material_new_order/compronan.dart';


class provider_app with ChangeNotifier{
  
 List<String> list = [];
 void addItem(String item) {
    list.add(item);
    notifyListeners();
  }

  void deleteItem(int index) {
    list.removeAt(index);
    notifyListeners();
  }

    
  }











