
import 'package:flutter/material.dart';
import 'package:images/bloc/LoginBloc.dart';

class LoginProvider extends InheritedWidget {
  static LoginProvider _instance;

  factory LoginProvider({Key key, Widget child}) {
    if (_instance == null) {
      _instance = new LoginProvider._internal(key: key, child: child);
    }
    return _instance;
  }

  LoginProvider._internal({Key key, Widget child})
      : super(key: key, child: child);

  final loginBlock = new LoginBloc();

  static LoginBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LoginProvider>()
        .loginBlock;
  }

  @override
  bool updateShouldNotify(LoginProvider oldWidget) => true;
}