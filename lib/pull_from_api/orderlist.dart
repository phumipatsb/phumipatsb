import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'modelsApi.dart';

Future<Welcome> fetchdata() async{
  final response = await http.get(Uri.parse('https://partner1.triggersplus.com/dining/get_menu/A53C88185CF64E6F85D00F2C75180AE1/'));
 final welcome ;
 if(response.statusCode == 200 && response.body.isNotEmpty){
  

  return welcome = welcomeFromJson(response.body);
  
 }
 else{
  throw Exception('LOOD');
 }
 

}

