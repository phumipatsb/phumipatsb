import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'modelsApi_Table.dart';
import 'modelsApi_manu.dart';
import 'modelsApi_status_table.dart';

Future<Welcome> fetchdata_manu() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/dining/get_menu/A53C88185CF64E6F85D00F2C75180AE1/'));
  final welcome;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return welcome = welcomeFromJson(response.body);
  } else {
    throw Exception('LOOD');
  }
}

Future<List<TableList>> fetchdata_table() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/dining/get_restaurant_mode/C3897EA1CEBB49AA81B0BD391E412581/'));
  final TableList;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return TableList = tableListFromJson(response.body);
  } else {
    throw Exception('LOOD');
  }
}

Future<TableStatusApi> fetchdataTableStatus() async {
  final response = await http.get(Uri.parse(
      'https://partner1.triggersplus.com/order/open_bill_list/A53C88185CF64E6F85D00F2C75180AE1/1/123/'));
  final tableApi;
  if (response.statusCode == 200 && response.body.isNotEmpty) {
    return tableApi = tableStatusApiFromJson(response.body);
  } else {
    throw Exception('Failed to load Data');
  }
}
