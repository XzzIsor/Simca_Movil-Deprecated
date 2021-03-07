import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  
  final String imageAssest;
  final String title;
  final Function onPressed;
  const CustomButton({Key key, this.imageAssest, this.title, this.onPressed}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      icon: ImageIcon(new AssetImage(imageAssest)),
      label: Text(title),
      onPressed: onPressed,
    );
  }
}
