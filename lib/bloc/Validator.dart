import 'dart:async';

class Validator {
  StreamTransformer validatePassword =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (password, sink) {
    if (password.length < 5) {
      sink.addError("La contraseña debe tener mas de 5 caracteres");
    } else {
      sink.add(password);
    }
  });

  StreamTransformer validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(email)) {
      sink.addError('Expresión innecesaria');
    } else {
      sink.add(email);
    }
  });
}