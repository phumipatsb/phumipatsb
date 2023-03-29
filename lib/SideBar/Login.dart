import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/provider_app.dart';
import '../pull_from_api/provider_Api.dart';
import 'login_pin.dart';
import 'logout.dart';

enum SampleItem {
  English,
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String choice = "Click Settings to make your selection";

  String selanguage = "";
  SampleItem? selectedMenu;
  @override
  void initState() {
    super.initState();
    final Model_list =
        Provider.of<ProviderApi_Staff_list>(context, listen: false);
    Model_list.getPost_Staff_list();
    // print(Model_list);
  }
  Widget build(BuildContext context) {
    bool login_status = context.watch<provider_login>().status_login;
    String name = context.watch<provider_login>().name;
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
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      
                      content: Container(
              width: 300.0,
              height: 100,
              child: logout()
            ),




                    //     content: Container(
                    //   height: 100,
                    //   width: 200,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(16),

                    //   ),
                    //   child: logout(),
                    // )
                    );
                  });
            }
          });
        },
        child: Center(
          child: Text("$name",
              style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
