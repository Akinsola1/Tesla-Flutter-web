import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List headerItem = [
  {"title": "Shop"},
  {"title": "Account"},
  {"title": "Menu"},
];

class HeaderItem2 extends StatelessWidget {
  const HeaderItem2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(headerItem.length, (index) {
      return MouseRegion(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(headerItem[index]['title'],
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
        ),
      );
    }));
  }
}
