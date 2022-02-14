import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_practice/header/header_side_menu.dart';

List headerItem= [
  {"title": "Model S"},
  {"title": "Model 3"},
  {"title": "Model X"},
  {"title": "Model Y"},
  {"title": "Solar Roof"},
  {"title": "Solar Panel"}
];


class headerItem1 extends StatelessWidget {
  const headerItem1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(headerItem.length, (index) {
      return MouseRegion(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            headerItem[index]['title'],
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          ),
        ),
      );
    }));
  }
}
