import 'package:flutter/material.dart';
import 'dart:ui';


class MenuButton extends StatelessWidget {
   final String title;
  final IconData icon;
  final Color backgroundColor;


  MenuButton({@required this.title,@required this.icon,@required this.backgroundColor}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.transparent,
      margin: EdgeInsets.all(25.0),
      width: 135,
      height: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            height: 175.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.53),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                SizedBox(height: 10,),
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 60.0,
                  ),
                  backgroundColor: backgroundColor,
                ),
                Text(title, style: TextStyle(color: Colors.black),),
                SizedBox(height: 10)
            ]),
          ),
        ),
      ),
    );
  }
}

