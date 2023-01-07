import 'package:flutter/material.dart';
import 'package:test1/RAW/SVG/svg.dart';


class dividing_line2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.0,
      height: 1.0,
      child: SvgWidget(painters: [
        SvgPathPainter.stroke(
          1.0,
          strokeJoin: StrokeJoin.miter,
        )
          ..addPath('M0 0L332 0L332 -1L0 -1L0 0Z')
          ..color = Color.fromARGB(255, 255, 110, 110),
      ]),
    );
  }
}
