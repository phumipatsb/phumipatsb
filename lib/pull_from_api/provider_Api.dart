import 'package:flutter/foundation.dart';
import 'package:test1/models/compronan.dart';
import 'package:test1/pull_from_api/modelsApi_Table.dart';
import 'modelsApi_manu.dart';
import 'linkApi.dart';
import 'modelsApi_status_table.dart';

class provider_api_Manu extends ChangeNotifier {
  Welcome? post;
  bool lodeing = false;

  getdata() async {
    lodeing = true;
    post = (await fetchdata_manu());
    lodeing = false;
    notifyListeners();
  }
}

class provider_api_table extends ChangeNotifier {
  List<TableList>? post_table;
  bool lodeing = false;

  getdata_table() async {
    lodeing = true;
    post_table = (await fetchdata_table());
    lodeing = false;
    notifyListeners();
  }
}

class TableStatusProviderApi extends ChangeNotifier {
  TableStatusApi? post;

  bool loading = false;

  getPostData() async {
    loading = true;
    post = (await fetchdataTableStatus());
    loading = false;
    notifyListeners();
  }
}
