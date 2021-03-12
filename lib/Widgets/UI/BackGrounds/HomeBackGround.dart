import 'package:flutter/material.dart';

class HomeBackGround extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  const Color.fromRGBO(47, 154, 247, 1),
                  const Color.fromRGBO(47, 190, 247, 1)
                ], // red to yellow
                tileMode: TileMode.repeated,
              ),
            )),
      ],
    );
  }
}
