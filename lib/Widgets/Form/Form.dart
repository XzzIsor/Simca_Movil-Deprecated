import 'package:flutter/material.dart';

import 'package:images/Widgets/UI/CustomButton.dart';
import 'package:images/Widgets/UI/CustomTextField.dart';

class CustomForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Iniciar Sesión', style: TextStyle(fontSize: 20),),
        SizedBox(height: 25.0,),
        CustomTextField(
          emailType: true,
          obscureText: false,
          icon: Icons.email,
          label: 'E-mail',
          onChange: (value) {},
        ),
        SizedBox(height:  25.0,),
        CustomTextField(
          emailType: false,
          icon: Icons.lock_rounded,
          label: 'Contraseña',
          obscureText: true,
          onChange: (value) {},
        ),
        SizedBox(height: 25.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CheckboxListTile(
            checkColor: Color.fromRGBO(23, 126, 196, 1),
            value: false, 
            onChanged: (v){},
            title: Text('Mantener Sesión Iniciada'),
          ),
        ),
        SizedBox(height: 25.0,),
        CustomButton(
          onPressed: (){},
          text: "Ingresar",
        )
      ]
    );
  }
}


