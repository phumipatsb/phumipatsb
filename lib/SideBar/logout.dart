import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../RAW/coloer/hex.dart';
import '../models/provider_app.dart';

class logout extends StatefulWidget {
  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    String name = context.watch<provider_login>().name;
    return GestureDetector(
      onTap: () {
        setState(() {
          context.read<provider_login>().updaet_status_login(false);
          context.read<provider_login>().updaet_login_name("Login");
          Navigator.pop(context);
        });
      },
      child: Column(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Center(
              child: Container(
                child: Text("name: $name",
                    style: const TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: HexColor(btlogout),
              ),
              child: Center(
                  child: Text("Log Out",
                      style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
          ),
        ],
      ),
    );
  }
}
