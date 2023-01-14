import 'package:flutter/foundation.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'package:test1/material_new_order/compronan.dart';


class provider_app with ChangeNotifier{
  
 

 

  
  List<tasks1> _tasks = [];
  List<tasks1> get tasks => List.unmodifiable(_tasks);

  void add( tasks1 text) {
    _tasks.add(text);
    notifyListeners();
    print(_tasks);
  }

  void edit(int index, newtext) {
    _tasks[index] = newtext;
    notifyListeners();
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

    
  }











