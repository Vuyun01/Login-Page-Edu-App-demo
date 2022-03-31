import 'package:demo_project_3/components/heading_text.dart';
import 'package:demo_project_3/constants.dart';
import 'package:flutter/material.dart';

class DividerOptions extends StatelessWidget {
  const DividerOptions({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          build_divider,
          HeadingText(text: 'OR', size: 20, color: kPrimaryColor),
          build_divider
        ],
      ),
    );
  }
}

Expanded build_divider = Expanded(
  child: Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Divider(
      color: kPrimaryColor.withOpacity(0.7),
    ),
  ),
);