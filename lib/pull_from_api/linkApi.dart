import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


import 'package:test1/pull_from_api/modelsApi_Staff_list.dart';
import 'package:test1/pull_from_api/modelsApi_bill_list.dart';

import 'modelsApi_Table.dart';
import 'modelsApi_close_shift.dart';
import 'modelsApi_manu.dart';
import 'modelsApi_status_table.dart';

Future<Manu> fetchdata_manu() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/dining/get_menu/A53C88185CF64E6F85D00F2C75180AE1/'));
  final welcome;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return welcome = manuFromJson(response.body);
  } else {
    throw Exception('LOOD');
  }
}

Future<List<TableList>> fetchdata_table() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/dining/get_restaurant_mode/55A52601B5214162B4ABFADC25B33A60/'));
  final TableList;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return TableList = tableListFromJson(response.body);
  } else {
    throw Exception('LOOD');
  }
}

Future<TableStatus> fetchdataTableStatus() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/order/open_table_list/A53C88185CF64E6F85D00F2C75180AE1/123/?output=json'));
  final tableApi;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return tableApi = tableStatusFromJson(response.body);
  } else {
    throw Exception('Failed to load Data');
  }
}

Future<StaffList> fetchdatastafflist() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/dining/get_stuff_list/A53C88185CF64E6F85D00F2C75180AE1/'));
  final tableApi;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return tableApi = staffListFromJson(response.body);
  } else {
    throw Exception('Failed to load Data');
  }
}


Future<BillList> fetch_data_bill_list1() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/order/open_bill_list/A53C88185CF64E6F85D00F2C75180AE1/1/123/'));
  final tableApi;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return tableApi = billListFromJson(response.body);
  } else {
    throw Exception('Failed to load Data');
  }
}


Future<CloseShift> fetch_data_close_shift() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/order/close_shift_prepare/type/A53C88185CF64E6F85D00F2C75180AE1/1/123/'));
  final tableApi;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return tableApi = closeShiftFromJson(response.body);
  } else {
    throw Exception('Failed to load Data');
  }
}
