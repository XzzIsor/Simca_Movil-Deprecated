import 'package:flutter/material.dart';
import 'package:images/Widgets/UI/Decoration/CustomRectangle.dart';


class HomeBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(78, 137, 225, 1)   // red to yellow
          )),
          CustomRectangle()
    ]);
  }
}

