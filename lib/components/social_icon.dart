import 'package:demo_project_3/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ListSocialIconButton extends StatelessWidget {
  const ListSocialIconButton({
    Key? key, 
    required this.icon, 
    required this.icon1, 
    required this.icon2,
  }) : super(key: key);
  final String icon;
  final String icon1;
  final String icon2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(icon: icon,),
        SocialIcon(icon: icon1,),
        SocialIcon(icon: icon2,),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: kPrimaryColor.withOpacity(0.3)),
        shape: BoxShape.circle
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          onPressed: (){},
          child: SvgPicture.asset(
            'assets/icons/$icon', 
            width: size.width * 0.05,
            color: kPrimaryColor.withOpacity(0.7)
          ),
        ),
      ),
      // child: SvgPicture.asset(
      //   'assets/icons/$icon', 
      //   width: size.width * 0.05,
      //   color: kPrimaryColor.withOpacity(0.7)
      // ),
    );
  }
}