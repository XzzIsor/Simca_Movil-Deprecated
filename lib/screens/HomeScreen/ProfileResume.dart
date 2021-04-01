import 'package:flutter/material.dart';
import 'package:images/Simca-info/profile.dart';
import 'package:images/Widgets/UI/CustomCircleAvatar.dart';

class ProfileResumen extends StatelessWidget {
  final Profile profile;
  ProfileResumen({@required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          CustomCircleAvatar(imageDirection: profile.fotoPerfil),  
          Text(profile.nombre) 
        ],),
        Text('Semestre: ' + profile.semestre),
        Text('Codigo: ' + profile.codigo),
      ],
    );
  }
}
