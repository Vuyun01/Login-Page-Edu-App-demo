import 'package:demo_project_3/components/body_text.dart';
import 'package:demo_project_3/components/rounded_button.dart';
import 'package:demo_project_3/constants.dart';
import 'package:demo_project_3/screens/login/signin_screen.dart';
import 'package:demo_project_3/screens/welcome/components/background.dart';
import 'package:demo_project_3/screens/welcome/components/welcome_part.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> data = [
    {
      "text":"Welcome to EduFamily. Let's started",
      "image":"assets/icons/chat.svg"
    },
    {
      "text":"Chat and relax with your friends. \nSchedule your plan for the studies",
      "image":"assets/icons/login.svg"
    },
    {
      "text":"Relax in your favorite songs \non your own with our music platform",
      "image":"assets/icons/signup.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    AnimatedContainer animatedBuilder(int index){
      return AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(right: size.width * 0.005),
        width: currentPage == index ? 20 : 8,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentPage == index ? kPrimaryColor.withOpacity(0.7) : Colors.grey.shade400,
        ),
      );
    }
    
    return Background(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: data.length,
              itemBuilder: (context, index) => WelcomePart(data: data[index],)
            )
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(data.length, (index) => animatedBuilder(index))
                ),
                SizedBox(height: size.width * 0.3 ,),
                RoundedButton(
                  width: size.width * 0.6,
                  text: 'Continue',
                  onTap: (){
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignInScreen()));
                  },
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

