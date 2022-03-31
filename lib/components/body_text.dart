import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key, 
    required this.text, 
    this.size = 15, 
    this.color = Colors.black, 
    this.isCenterText = true,
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;
  final bool isCenterText;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isCenterText ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        color: color, fontSize: size,
      ),
    );
  }
}