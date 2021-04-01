import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageDirection;
  const CustomCircleAvatar({@required this.imageDirection});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage(imageDirection)
    );
  }
}
