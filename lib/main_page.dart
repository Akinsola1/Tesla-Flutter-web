import 'package:flutter/material.dart';
import 'package:web_practice/body/body.dart';
import 'package:web_practice/header/header.dart';
import 'package:web_practice/header/header_side_menu.dart';
import 'package:web_practice/responsive.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer:  HeaderSideMenu(),
      body: responsive(
      mobile: SingleChildScrollView(
        child: body(),
      ),
      tablet: SingleChildScrollView(
        child: body(),
      ),
      desktop: SingleChildScrollView(
        child: body(),
      ),
    ));
  }


}
