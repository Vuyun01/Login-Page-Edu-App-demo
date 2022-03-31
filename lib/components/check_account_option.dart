import 'package:demo_project_3/components/body_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CheckAccountOption extends StatelessWidget {
  const CheckAccountOption({
    Key? key, 
    this.isHasAccount = true, required this.onTap,
  }) : super(key: key);
  final bool isHasAccount;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BodyText(text: isHasAccount ? "Don't have any account? " : "Already have an account? ", 
                  color: kPrimaryColor,),
        TextButton(
          onPressed: onTap, 
          child: BodyText(text: isHasAccount ? "Sign up" : "Log In", color: kPrimaryColor)
        )
      ],
    );
  }
}