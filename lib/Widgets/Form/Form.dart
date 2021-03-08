import 'package:flutter/material.dart';

import 'package:images/Widgets/UI/CustomButton.dart';
import 'package:images/Widgets/UI/CustomTextField.dart';
import 'package:images/bloc/LoginBloc.dart';
import 'package:images/bloc/LoginProvider.dart';

class CustomForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = LoginProvider.of(context);
    return Column(
      children: [
        emailStreamBuilder(bloc),
        SizedBox(height:  25.0,),
        passwordStreamBuilder(bloc),
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
        SizedBox(height: 5.0,),
        customButton(bloc , context)
      ]
    );
  }

  Widget customButton(LoginBloc bloc, BuildContext context) => StreamBuilder(
      stream: bloc.isValid,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return CustomButton(
          onPressed: snapshot.hasData ? () => {} : null,
          text: "Ingresar",
      );
    },
  );

  Widget emailStreamBuilder(LoginBloc bloc) => StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return CustomTextField(
          icon: Icons.email,
          label: 'Usuario',
          obscureText: false,
          emailType: true,
          counterText: snapshot.data != null  ? snapshot.data + "@unicauca.edu.co" : "@unicauca.edu.co",
          onChange: bloc.changeEmail,
          errorText: snapshot.error,
        );
      },
    );

  Widget passwordStreamBuilder(LoginBloc bloc) => StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return CustomTextField(
          icon: Icons.lock_sharp,
          label: 'Contraseña',
          obscureText: true,
          emailType: false,
          onChange: bloc.changePassword,
          errorText: snapshot.error,
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: (){},
          ),
        );
      },
    );

}


