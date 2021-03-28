import 'package:flutter/material.dart';
import 'dart:math';

class CustomRectangle extends StatelessWidget {
  const CustomRectangle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Positioned(
          top: 100,
          left: -150,
     
          child: Transform.rotate(
            angle: 3.5,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 2.5),
                        colors: [
                        Color.fromRGBO(76, 77, 106, 0.41),
                        Color.fromRGBO(44, 39, 46, 1),
                    ]
                    )),
                height: 330.0,
                width: 1000 ,
              ),
          ),
    );
  }
}
