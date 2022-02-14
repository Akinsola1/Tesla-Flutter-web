import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List headerItem = [
  {"title": "Model S", "options": false},
  {"title": "Model 3", "options": false},
  {"title": "Model X", "options": false},
  {"title": "Model Y", "options": false},
  {"title": "Solar Roof", "options": false},
  {"title": "Solar Panel", "options": false},
  {"title": "Existing Inventory", "options": false},
  {"title": "Used Inventory", "options": false},
  {"title": "Trade-In", "options": false},
  {"title": "Test Drive", "options": false},
  {"title": "Powerwall", "options": false},
  {"title": "Commercial Energy", "options": false},
  {"title": "Utilities", "options": false},
  {"title": "Charging", "options": false},
  {"title": "Find Us", "options": false},
  {"title": "Support", "options": false},
  {"title": "Investor Relation", "options": false},
  {"title": "Shop", "options": false},
  {"title": "Account", "options": false},
  {"title": "More", "options": true}
];

class HeaderSideMenu extends StatelessWidget {
  const HeaderSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: 300,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.cancel), color: Colors.black,),
               Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(headerItem.length, (index) {
                        return OnHoverEffect(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            child: Row(
                              children: [
                                Text(headerItem[index]['title'],
                                    style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                                    Spacer(),
                                if(headerItem[index]['options'])
                                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        )
        );
  }
}

class OnHoverEffect extends StatefulWidget {
  final Widget child;
  const OnHoverEffect({Key? key, required this.child}) : super(key: key);

  @override
  State<OnHoverEffect> createState() => _OnHoverEffectState();
}

class _OnHoverEffectState extends State<OnHoverEffect> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: ((event) => onEntered(true)),
      onExit: ((event) => onEntered(false)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: isHover ? Colors.grey.withOpacity(0.3) : Colors.transparent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)
          ),
          duration: Duration(milliseconds: 100) ,
        child: widget.child),
      ));
  }
  onEntered(bool isHover) {
  setState(() {
    this.isHover = isHover; 
  });
}
}


