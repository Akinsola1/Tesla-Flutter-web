import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_practice/header/headerItem2.dart';
import 'package:web_practice/header/header_logo.dart';
import 'package:web_practice/header/headeritem1.dart';

class header extends StatelessWidget {
  const header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          HeaderLogo(),
          Spacer(),
          headerItem1(),
          Spacer(),
          HeaderItem2()
        ],
      ),
    );
  }
}