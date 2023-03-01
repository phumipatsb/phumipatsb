import 'package:flutter/foundation.dart';
import 'package:test1/models/compronan.dart';
import 'package:test1/pull_from_api/modelsApi_Table.dart';
import 'modelsApi_manu.dart';
import 'linkApi.dart';



class provider_api_Manu extends ChangeNotifier{
  Welcome? post ;
  bool lodeing = false;

  getdata()async{
    lodeing =true;
    post= (await fetchdata_manu());
    lodeing=false; 
    notifyListeners();
  }
}



class provider_api_table extends ChangeNotifier{
  List<TableList>? post_table ;
  bool lodeing = false;

  getdata()async{
    lodeing =true;
    post_table= (await fetchdata_table());
    lodeing=false; 
    notifyListeners();
  }
}