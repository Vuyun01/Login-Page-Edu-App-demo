import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key, 
    required this.text, 
    this.size = 20, 
    this.color = Colors.black, 
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          color: color, fontSize: size, fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}