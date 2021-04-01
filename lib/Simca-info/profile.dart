import 'package:flutter/cupertino.dart';

class Profile {
  Profile({String nombre, String correo}) {
    _nombre = nombre;
    _correo = correo;
  }

  String fotoPerfil; 
  String _nombre;
  int _codigo;
  String _programa;
  String _promedioCarrera;
  String _promedioAnterior;
  int _semestre;
  String _idPensum;
  String _municipioExpedicion;
  String _tipoIdentificacion;
  DateTime _fechaNacimiento;
  String _estado;
  String _correo;

  String get nombre => _nombre;
  String get codigo => _codigo.toString();
  String get semestre => _semestre.toString();
}
