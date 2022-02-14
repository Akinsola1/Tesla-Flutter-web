
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_practice/header/header_logo.dart';

class Header2 extends StatefulWidget {
  const Header2({Key? key}) : super(key: key);

  @override
  State<Header2> createState() => _Header2State();
}
class _Header2State extends State<Header2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderLogo(),
          const Spacer(),
          GestureDetector(
            onTap: (){
              Scaffold.of(context).openEndDrawer();
            },
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text('Menu',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
