// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:web_practice/body/carousel.dart';
import 'package:web_practice/constant.dart';
import 'package:web_practice/footer/footer.dart';
import 'package:web_practice/header/header.dart';
import 'package:web_practice/header/theader.dart';
import 'package:web_practice/responsive.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height:size.height,
            enableInfiniteScroll: false,
            scrollDirection: Axis.vertical,
            autoPlay: false,
            reverse: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: false,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return card;
            });
          }).toList(),
        ),
      ],
    );
  }
}

class snapScrollItem extends StatefulWidget {
  final String image;
  final String name;
  final bool subTitle;
  final String subtitle;
  final String Button1;
  final String Button2;
  snapScrollItem({
    Key? key,
    required this.image,
    required this.name,
    required this.subTitle,
    required this.subtitle,
    required this.Button1,
    required this.Button2,
  }) : super(key: key);

  @override
  State<snapScrollItem> createState() => _snapScrollItemState();
}

class _snapScrollItemState extends State<snapScrollItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  widget.image,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Column(
          children: [
            if(responsive.isMobile(context))
            Header2(),
            if (responsive.isTablet(context))
              Header2(),
            if (responsive.isDesktop(context))
              FadeIn(
                  duration: const Duration(seconds: 2), child: const header()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  FadeIn(
                    duration: const Duration(seconds: 1),
                    child: Text(
                      widget.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: TextColor,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  if(widget.subTitle)
                  Text(
                    widget.subtitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 2
                    ),
                  ),
                  if(widget.subTitle == false)
                  RichText(
                    text: TextSpan(
                      text: 'Order Online for',
                      style: GoogleFonts.montserrat(
                          wordSpacing: 2,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Touchless Delivery',
                            style: GoogleFonts.montserrat(
                                decoration: TextDecoration.underline,
                                wordSpacing: 2,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  if(responsive.isDesktop(context) || responsive.isTablet(context))
                  SizedBox(
                    height: size.height / 2,
                  ),
                  if(responsive.isMobile(context) )
                  SizedBox(
                    height: size.height / 2,
                  ),
                  if(responsive.isDesktop(context) || responsive.isTablet(context))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buttons(TextColor: Colors.white, title:widget.Button1 , BackgroundColor: Colors.black, height: 40, width: 250,),
                       SizedBox(width: 20),
                      Buttons(TextColor: TextColor, title: widget.Button2, BackgroundColor: Colors.white, height: 40, width: 250 ,),
                    ],
                  ),
                  if(responsive.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Buttons(TextColor: Colors.white, title: widget.Button1, BackgroundColor: Colors.black, width: size.width, height: 40,),
                        SizedBox(height: 20),
                        Buttons(TextColor: TextColor, title: widget.Button2, BackgroundColor: Colors.white, height: 40, width: size.width,),
                      ],
                    ),
                  ),
                  // Expanded(child: Footer())
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  final String title;
  final Color TextColor;
  final Color BackgroundColor;
  final  height;
  final  width;
  const Buttons({
    Key? key,
    required this.title,
    required this.TextColor,
    required this.BackgroundColor,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: BackgroundColor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          title,
          style: GoogleFonts.montserrat(
            color: TextColor,
            fontSize: 13,
          ),
        )),
      ),
    );
  }
}
