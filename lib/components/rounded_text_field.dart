import 'package:demo_project_3/components/textfield_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key, 
    required this.text, 
    required this.icon,
    this.isPassword = false, 
    this.color = kPrimaryColor, 
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData icon;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: Icon(icon, color: color),
          hintText: text,
          hintStyle: TextStyle(color: color.withOpacity(0.7)),
          border: InputBorder.none
        ),
      )
    );
  }
}