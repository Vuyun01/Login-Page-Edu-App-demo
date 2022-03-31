import 'package:demo_project_3/components/body_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, 
    this.radius = 25, 
    this.backgroundColor = kPrimaryColor, 
    required this.onTap,
    required this.text, 
    this.width = 200, 
  }) : super(key: key);

  final Function() onTap;
  final double radius;
  final String text;
  final Color backgroundColor;
  final double width;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            backgroundColor: backgroundColor.withOpacity(0.6),
            elevation: 0
          ),
          onPressed: onTap, 
          child: BodyText(
            text: text, 
            size: 18, 
            color: Colors.white,)
        ),
      ),
    );
  }
}