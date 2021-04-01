import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CustomButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(23, 126, 196, 1),
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      )
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
