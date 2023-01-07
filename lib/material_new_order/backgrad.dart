import 'package:flutter/material.dart';


class backgrad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 660.0,
      height: 289.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          color: Color.fromARGB(255, 255, 219, 219),
          
        ),
      ),
    );
  }
}