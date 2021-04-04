import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images/blocs/LoginBloc/LoginEvent.dart';
import 'package:images/blocs/LoginBloc/LoginState.dart';

class LoginBloc extends Bloc<LoginEventEnum, LoginState> {
  LoginBloc(LoginState initialState) : super(LoginState.initial()); 

  @override
  Stream<LoginState> mapEventToState(LoginEventEnum event) async* {
  switch (event) {
    case LoginEventEnum.onChangePassword:
        if (state.password.length < 5) {
          yield LoginState( isPasswordValid: false);
        } else {
          yield LoginState( isPasswordValid: true);
        }
      break;
    case LoginEventEnum.onChangeEmail:
        Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = RegExp(pattern);

        if (regExp.hasMatch(state.email)) {
          yield LoginState( isEmailValid: false);
        } else {
          yield LoginState( isEmailValid: true);
        }
        break;
      default:
    } 
  }
}
