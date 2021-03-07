import 'package:flutter/material.dart';
import 'package:images/Widgets/UI/UserIcon.dart';

class LoginBackGround extends StatelessWidget {
  const LoginBackGround({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
            height: size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  const Color.fromRGBO(18, 94, 169, 1),
                  const Color.fromRGBO(13, 65, 133, 1)
                ], // red to yellow
                tileMode: TileMode.repeated,
              ),
            )),
        UserIcon()
      ],
    );
  }
}
