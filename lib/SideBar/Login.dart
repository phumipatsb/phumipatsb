import 'package:flutter/material.dart';

import 'login_pin.dart';
enum SampleItem { English,  }
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String choice = "Click Settings to make your selection";
  bool login_status = false;
  String selanguage = "";
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (login_status == false) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Container(
                      height: 600,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: login_pin(),
                    ));
                  });
            }
            if (login_status == true) {
              
              
            }
          });
        },
        child: Center(
          
          child: Text("Login",
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
