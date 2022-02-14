import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/logo.png', height: 80, width: 130,);
  }
}