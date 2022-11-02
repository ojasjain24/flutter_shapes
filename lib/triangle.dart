import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class Triangle extends StatefulWidget {
  Triangle({Key? key, required this.size}) : super(key: key);

  Size size;

  @override
  State<StatefulWidget> createState() {
    return TriangleState();
  }
}

class TriangleState extends State<Triangle> {
  @override
  Widget build(BuildContext context) {
    Color triangleColor =
    Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return InkWell(
      onTap: () {
        setState(() {
          // triangleColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          triangleColor =
              Color((Random().nextInt(0xFFFFFF))).withOpacity(0.8);
        });
      },
      child: Container(
        clipBehavior: Clip.none,
        height: widget.size.height,
        width: widget.size.width / 2,
        alignment: Alignment.bottomRight,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              clipBehavior: Clip.none,
              padding: EdgeInsets.fromLTRB(0, widget.size.height / 3, 0, 0),
              alignment: Alignment.topCenter,
              child: oNeonLine(
                lineWidth: widget.size.width / 2.5,
                lineHeight: 3,
                lightSpreadRadius: 10,
                lightBlurRadius: 60,
                spreadColor: triangleColor,
              ),
            ),
            Positioned(
              bottom: 0, // size.height*5 /12,
              right: widget.size.width / 4,
              child: oNeonLine(
                transformAlignment: Alignment.bottomRight,
                transform: Matrix4.rotationZ(atan(
                  4.166 * (widget.size.height / widget.size.width),
                )),
                lineWidth: widget.size.height /
                    (1.2 *
                        sin(atan(
                            3.33 * (widget.size.height / widget.size.width)))),
                lineHeight: 3,
                lightSpreadRadius: 10,
                lightBlurRadius: 60,
                spreadColor: triangleColor,
                // spreadColor: Colors.green,
              ),
            ),
            Positioned(
              bottom: 0, // size.height*5 /12,
              right: widget.size.width / 4,
              child: oNeonLine(
                transformAlignment: Alignment.bottomRight,
                transform: Matrix4.rotationZ(pi -
                    atan(
                      4.166 * (widget.size.height / widget.size.width),
                    )),
                lineWidth: widget.size.height /
                    (1.2 *
                        sin(atan(
                            3.33 * (widget.size.height / widget.size.width)))),
                lineHeight: 3,
                lightSpreadRadius: 10,
                lightBlurRadius: 60,
                spreadColor: triangleColor,
                // spreadColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
