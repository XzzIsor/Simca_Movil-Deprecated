import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 75.0),
      child: Column(
        children: [
          Image(image: AssetImage("Assets/logo-simca.png"),width: 100, height: 100,),
          SizedBox(height: 10, width: double.infinity),
        ],
      ),
    );
  }
}