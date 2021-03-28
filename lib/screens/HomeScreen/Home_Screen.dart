import 'package:flutter/material.dart';
import 'package:images/Widgets/UI/BackGrounds/HomeBackGround.dart';
import 'package:images/Widgets/UI/UserIcon.dart';
import 'package:images/screens/HomeScreen/ButtonsSection.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackGround(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Hero(
                    tag: "hola",
                    child: Image(image: AssetImage("Assets/logo-simca.png"),width: 100, height: 100,),
                  ),
                ],
              ),
              Spacer(),
              ButtonsSection(),
              Spacer(),
            ],
          )
         
        ],
      ),
      
    );
  }
}

