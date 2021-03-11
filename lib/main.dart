
import 'package:flutter/material.dart';
import 'package:images/screens/Home_Screen.dart';
import 'package:images/screens/Login_Screen.dart';
import 'bloc/LoginProvider.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginProvider(
      child: MaterialApp(
        title: 'Images',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/' : (BuildContext context) => LoginScreen(),
          'home': (BuildContext context) => HomeScreen(),
        },
      ),
    );
  }
}