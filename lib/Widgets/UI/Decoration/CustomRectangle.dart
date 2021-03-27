import 'package:flutter/material.dart';

class CustomRectangle extends StatelessWidget {
  const CustomRectangle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 50.0),
        RotationTransition(
          turns: AlwaysStoppedAnimation(30 / 360),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 0.5),
                    colors: [
                  Color.fromRGBO(44, 39, 46, 1),
                  Color.fromRGBO(76, 77, 106, 0.41)
                ])),
            height: 250.0,
            width: size.width * 12.0,
          ),
        ),
      ],
    );
  }
}
