import 'package:demo_project_3/components/body_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key, required this.onTap,

  }) : super(key: key);
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onTap,
        child: BodyText(text: 'Forgot password?',color: kPrimaryColor.withOpacity(0.6),),
      ),
    );
  }
}