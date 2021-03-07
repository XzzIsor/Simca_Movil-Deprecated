import 'package:flutter/material.dart';
import 'package:images/Widgets/Form/FormContainer.dart';
import 'package:images/Widgets/UI/LoginBackGround.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LoginBackGround(),
          FormContainer()
        ],
      )
    );
  }
}