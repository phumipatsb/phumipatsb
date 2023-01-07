import 'package:flutter/material.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';

/* Line Line 4
    Autogenerated by FlutLab FTF Generator
  */
class dividing_line3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -0.00,
        b: -1.00,
        c: 1.00,
        d: -0.00,
        child: Container(
          width: 235.0,
          height: 1.0,
          child: SvgWidget(painters: [
            SvgPathPainter.stroke(
              1.0,
              strokeJoin: StrokeJoin.miter,
            )
              ..addPath('M0 0L235 0L235 -1L0 -1L0 0Z')
              ..color = Color.fromARGB(255, 255, 110, 110),
          ]),
        ));
  }
}
