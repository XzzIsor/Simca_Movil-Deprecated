import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final IconData icon;
  final bool emailType;
  final Function onChange;
  final String errorText;
  final String counterText;
  final IconButton suffixIcon;

  CustomTextField(
      {this.icon,
      this.label,
      this.obscureText,
      this.emailType,
      this.onChange,
      this.counterText,
      this.errorText, 
      this.suffixIcon}
  );
  @override
  Widget build(BuildContext context) {
    final keyboardType =
        emailType ? TextInputType.emailAddress : TextInputType.text;
    

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        onChanged: onChange,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          counterText: counterText,
          focusColor: Color.fromRGBO(23, 126, 196, 1),
          icon: Icon(icon, color: Color.fromRGBO(23, 126, 196, 1)),
          labelText: label,
          errorText: errorText,
        ),
      ),
    );
  }
}
