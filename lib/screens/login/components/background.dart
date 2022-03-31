import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({ Key? key, required this.child }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0, left: 0,
            child: Image.asset('assets/images/main_top.png', width: size.width * 0.4,)
          ),
          Positioned(
            bottom: 0, right: 0,
            child: Image.asset('assets/images/login_bottom.png', width: size.width * 0.35,)
          ),
          Positioned(
            top: 0, right: 0,
            child: Image.asset('assets/images/signup_top.png', width: size.width * 0.25,)
          ),
          child,
        ],
      ),
    );
  }
}