import 'package:demo_project_3/components/textfield_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key, 
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hideText = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: hideText,
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor),
          hintText: 'Password',
          hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.7)),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                hideText = !hideText;
              });
            },
            icon: Icon(hideText 
            ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, 
            color: kPrimaryColor,)
          ),
          border: InputBorder.none
        ),
      )
    );
  }
}