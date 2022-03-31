import 'package:demo_project_3/components/body_text.dart';
import 'package:demo_project_3/components/check_account_option.dart';
import 'package:demo_project_3/components/divider_options.dart';
import 'package:demo_project_3/components/forgot_password.dart';
import 'package:demo_project_3/components/heading_text.dart';
import 'package:demo_project_3/components/rounded_button.dart';
import 'package:demo_project_3/components/rounded_password_field.dart';
import 'package:demo_project_3/components/rounded_text_field.dart';
import 'package:demo_project_3/components/social_icon.dart';
import 'package:demo_project_3/components/textfield_container.dart';
import 'package:demo_project_3/constants.dart';
import 'package:demo_project_3/screens/login/components/background.dart';
import 'package:demo_project_3/screens/signup/signup_screen.dart';
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
              HeadingText(text: 'LOGIN', color: kPrimaryColor),
              SizedBox(height: size.width * 0.05,),
              SvgPicture.asset('assets/icons/login.svg', width: size.width * 0.6,),
              RoundedInputField(text: 'Your email',icon: Icons.person),
              RoundedPasswordField(),
              ForgotPassword(onTap: (){},),
              RoundedButton(width: size.width * 0.8,onTap: (){}, text: 'Login'),
              SizedBox(height: size.width * 0.04,),
              CheckAccountOption(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen()));
              },),
              DividerOptions(),
              ListSocialIconButton(
                icon: 'facebook.svg',
                icon1: 'google-plus.svg',
                icon2: 'twitter.svg',
              )
            ],
          ),
        ),
      ),
    );
  }
}















