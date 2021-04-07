import 'package:flutter/material.dart';
import 'dart:ui';

class ExpandedButton extends StatefulWidget {
  ExpandedButton({Key key}) : super(key: key);
  @override
  _ExpandedButtonState createState() => _ExpandedButtonState();
}

class _ExpandedButtonState extends State<ExpandedButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height*0.15),
      color: Colors.transparent,
      width: size.width*0.8,
      height: 50.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            child: Center(child: Text("SapoHpta", style: TextStyle(color: Colors.black))),
            color: Colors.white54,
          ),
        )
      )
    ); 
  }
}
