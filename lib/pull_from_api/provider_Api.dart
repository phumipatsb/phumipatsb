import 'package:flutter/foundation.dart';
import 'package:test1/models/compronan.dart';
import '../pull_from_api/modelsApi.dart';
import 'linkApi.dart';



class provider_api extends ChangeNotifier{
  Welcome? post ;
  bool lodeing = false;

  getdata()async{
    lodeing =true;
    post= (await fetchdata());
    lodeing=false; 
    notifyListeners();
  }

   
  




}