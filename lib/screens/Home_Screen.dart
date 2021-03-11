import 'package:flutter/material.dart';
import 'package:images/Widgets/UI/BackGrounds/HomeBackGround.dart';
import 'package:images/Widgets/UI/BottomBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackGround(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

