import 'package:demo_project_3/components/check_account_option.dart';
import 'package:demo_project_3/components/heading_text.dart';
import 'package:demo_project_3/components/rounded_button.dart';
import 'package:demo_project_3/components/rounded_password_field.dart';
import 'package:demo_project_3/components/rounded_text_field.dart';
import 'package:demo_project_3/constants.dart';
import 'package:demo_project_3/screens/signup/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.width * 0.2,),
              HeadingText(text: 'SIGN UP', color: kPrimaryColor),
              SizedBox(height: size.width * 0.05,),
              SvgPicture.asset('assets/icons/signup.svg', width: size.width * 0.6),
              RoundedInputField(text: 'Your email', icon: Icons.person),
              RoundedPasswordField(),
              RoundedInputField(text: 'Confirm password', icon: Icons.lock, isPassword: true),
              SizedBox(height: size.width * 0.05,),
              RoundedButton(
                onTap: (){}, 
                text: 'Sign Up',
                width: size.width * 0.8,
              ),
              SizedBox(height: size.width * 0.04,),
              CheckAccountOption(
                onTap: (){
                  Navigator.of(context).pop();
                }, 
                isHasAccount: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}