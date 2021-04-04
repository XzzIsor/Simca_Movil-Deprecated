class LoginState {
  final bool isLogged;
  final String password;
  final String email;
  final bool isPasswordValid;
  final bool isEmailValid;

  LoginState({this.isPasswordValid, this.isEmailValid, this.isLogged, this.password, this.email});

  factory LoginState.initial() =>
      LoginState(isLogged: false, password: "", email: "", isPasswordValid: false, isEmailValid: false);
}
