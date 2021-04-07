import 'package:flutter/material.dart';
import 'package:images/Widgets/UI/Buttons/ExpandedButton.dart';
import 'package:images/Widgets/UI/Buttons/MenuButton.dart';

class ButtonsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            MenuButton(title: "Notas", icon: Icons.equalizer_outlined, backgroundColor:  Colors.transparent),
            MenuButton(title: "Pénsum", icon: Icons.grading, backgroundColor:Colors.transparent)]
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            MenuButton(title: "Materias", icon: Icons.class__outlined, backgroundColor: Colors.transparent,) , 
            MenuButton(title: "Matriculas", icon: Icons.school, backgroundColor: Colors.transparent)]),
          ExpandedButton(),
        ],
      ),
    );
  }
}


