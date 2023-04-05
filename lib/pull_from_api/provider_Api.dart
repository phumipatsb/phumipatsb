import 'package:flutter/foundation.dart';
import 'package:test1/models/compronan.dart';
import 'package:test1/pull_from_api/modelsApi_Table.dart';
import 'modelsApi_Staff_list.dart';
import 'modelsApi_bill_list.dart';
import 'modelsApi_close_shift.dart';
import 'modelsApi_manu.dart';
import 'linkApi.dart';
import 'modelsApi_status_table.dart';

class provider_api_Manu extends ChangeNotifier {
  Manu? post;
  bool lodeing = false;

  getdata() async {
    lodeing = true;
    post = (await fetchdata_manu());
    lodeing = false;
    notifyListeners();
  }
}

class provider_api_table extends ChangeNotifier {
  List<TableList>? post2;
  bool lodeing = false;

  getPostData2() async {
    lodeing = true;
    post2 = (await fetchdata_table());
    lodeing = false;
    notifyListeners();
  }
}

class TableStatusProviderApi extends ChangeNotifier {
  TableStatus? post3;

  bool loading = false;

  getdatastatus() async {
    loading = true;
    post3 = (await fetchdataTableStatus());
    loading = false;
    notifyListeners();
  }
}

class ProviderApi_Staff_list extends ChangeNotifier {
  List<StaffList>? posts;

  bool loading = false;

  getPost_Staff_list() async {
    loading = true;
    posts = (await fetchdatastafflist());
    loading = false;
    notifyListeners();
  }
}

class bill_list_ProviderApi extends ChangeNotifier {
  BillList? post3;

  bool loading = false;

  get_data_bill_list_ProviderApi() async {
    loading = true;
    post3 = (await fetch_data_bill_list());
    loading = false;
    notifyListeners();
  }
}


class close_shift_ProviderApi extends ChangeNotifier {
  CloseShift? billpost;

  bool loading = false;

  GetDatabillshift() async {
    loading = true;
    billpost = (await fetch_data_close_shift());
    loading = false;
    notifyListeners();
  }
}
