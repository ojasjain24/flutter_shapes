import 'package:flutter/material.dart';
import 'package:shapes/triangle.dart';

void main() async {
  runApp(Shapes());
}

class Shapes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShapesState();
  }
}

class ShapesState extends State<Shapes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(children: [
            Triangle(size: Size(500,500)),
          ],),
        ),
      ),
    );
  }
}
