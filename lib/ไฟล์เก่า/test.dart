
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test1/RAW/SVG/svg.dart';


class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  bool? ce = false;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Checkbox(value: ce,activeColor: Colors.amber,
      onChanged: (newbool) {
        setState(() {
          ce=newbool;
        });
      },
      ),
    ); 
  }
}
