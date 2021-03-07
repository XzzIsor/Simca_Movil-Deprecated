import 'package:flutter/material.dart';
import 'package:images/Widgets/Form/Form.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
           child: Container(
             height: 100.0,
           ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            width: size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                )
              ]
            ),
            child: CustomForm(),
          ),
        ],
       
      ),



    );
  }
}
