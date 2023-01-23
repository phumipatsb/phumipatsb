import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider_app.dart';

class display_price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;
    double toto = 0.0;

    return RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.right,
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
              text: '''600-.
60-.
46.2-.
''',
            ),
            TextSpan(
              text: '''706.2-.''',
              style: TextStyle(
                fontSize: 20.0,

                /* letterSpacing: null, */
              ),
            )
          ],
        ));
  }

  double totop() {
    double toto = 0.0;

    return toto;
  }
}
