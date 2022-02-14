import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List footerItem =[
  {"title" : "Tesla © 2022"},
  {"title" : "Privacy & Legal"},
  {"title" : "Contact"},
  {"title" : "Careers"},
  {"title" : "News"},
  {"title" : "Engage"},
  {"title" : "Locations"},
];
class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(footerItem.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            footerItem[index]['title'],
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          ),
        );
      })
      ),
    );
  }
}