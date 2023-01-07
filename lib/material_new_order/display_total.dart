import 'package:flutter/material.dart';


class display_total extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        text: const TextSpan(
          style: TextStyle(
            height: 1.2102272327129657,
            fontSize: 13.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),

            /* letterSpacing: 0.0, */
          ),
          children: [
            TextSpan(
              text: '''Subtotal
Service Charge
VAT
''',
              style: TextStyle(

                  /* letterSpacing: null, */
                  ),
            ),
            TextSpan(
              text: '''Grand Total''',
              style: TextStyle(
                fontSize: 20.0,

                /* letterSpacing: null, */
              ),
            )
          ],
        ));
  }
}