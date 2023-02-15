import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'modelsApi.dart';


class apiMenuDataList {
  // List<CategoryMenuList> menuDataList = [];

  static Future<List<CategoryMenuList>> fetchMenuList() async {
    var response = await http.get(
      Uri.parse(
        Uri.encodeFull(
            'https://partner1.triggersplus.com/dining/get_menu/A53C88185CF64E6F85D00F2C75180AE1/'),
      ),
    );
    print(response);
    return [];
    // if (response.body.isNotEmpty && response.statusCode == 200) {
    //   try {
    //     var json = jsonDecode(response.body);
    //     return List.from(json['data'])
    //         .map<CategoryMenuList>((ag) => CategoryMenuList(ag))
    //         .toList();
            
    //   } catch (err) {
    //     print(err);
    //     return [];
    //   }}
  }






} 


