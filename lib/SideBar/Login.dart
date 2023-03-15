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
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                      contentPadding: EdgeInsets.only(top: 10.0),
                      content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Rate",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add Review",
                        border: InputBorder.none,
                      ),
                      maxLines: 8,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Text(
                        "Rate Product",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
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
