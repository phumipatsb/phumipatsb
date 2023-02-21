import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'material_new_order/leftside.dart';
import 'RAW/coloer/hex.dart';

import 'material_new_order/new_meun_list.dart';
import 'package:provider/provider.dart';
import 'CategoryMenu/CategoryMenu.dart';
import 'material_new_order/Sum_Layout_neworder.dart';



class HomePage1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  int _stackIndex = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  final _status = ["Pending", "Released", "Blocked"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Radio button group example",
        ),
      ),
      body: IndexedStack(
        index: _stackIndex,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RadioButton(
                description: "Text alignment right Text alignment right",
                value: "Text alignment right",
                groupValue: _singleValue,
                onChanged: (value) => setState(
                  () => _singleValue = value ?? '',
                ),
                activeColor: Colors.red,
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              RadioButton(
                description: "Text alignment left",
                value: "Text alignment left",
                groupValue: _singleValue,
                fillColor: Colors.amber,
                onChanged: (value) => setState(
                  () => _singleValue = value ?? '',
                ),
                textPosition: RadioButtonTextPosition.left,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              RadioGroup<String>.builder(
                groupValue: _verticalGroupValue,
                onChanged: (value) => setState(() {
                  _verticalGroupValue = value ?? '';
                }),
                items: _status,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
                fillColor: Colors.purple,
              ),
              RadioGroup<String>.builder(
                groupValue: _verticalGroupValue,
                onChanged: (value) => setState(() {
                  _verticalGroupValue = value ?? '';
                }),
                items: _status,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                  
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
            child: RadioGroup<String>.builder(
              direction: Axis.horizontal,
              groupValue: _verticalGroupValue,
              horizontalAlignment: MainAxisAlignment.spaceAround,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
            ),
          ),
        ],
      ),



      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Single",
            icon: Icon(
              Icons.radio_button_checked,
            ),
          ),
          BottomNavigationBarItem(
            label: "Vertical",
            icon: Icon(
              Icons.list,
            ),
          ),
          BottomNavigationBarItem(
            label: "Horizontal",
            icon: Icon(
              Icons.linear_scale,
            ),
          ),
        ],
        currentIndex: _stackIndex,
        onTap: (index) => setState(
          () => _stackIndex = index,
        ),
      ),
    );
  }
}