import 'package:demo_project_3/components/body_text.dart';
import 'package:demo_project_3/components/heading_text.dart';
import 'package:demo_project_3/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePart extends StatelessWidget {
  const WelcomePart({ 
    Key? key, 
    required this.data 
  }) : super(key: key);

  final Map<String, String> data;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width * 0.2,),
        HeadingText(text: 'EduFamily',size: 25, color: kPrimaryColor,),
        BodyText(text: '${data["text"]}',size: 17,color: kPrimaryColor.withOpacity(0.7)),
        SizedBox(height: size.width * 0.06,),
        SvgPicture.asset('${data["image"]}', width: size.width * 0.75,)
      ],
    );
  }
}



