import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:portfolio/core/constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(children: [
        SizedBox(
          height: 200,
          child: DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                kHeight,
                Text(
                  'Sonu Raj',
                  style: CyrillicFonts.robotoCondensed(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        portfolioList(
          onTap: () {
            Navigator.pop(context);
          },
          title: 'Home',
        ),
        portfolioList(
          onTap: () {
            Navigator.pop(context);
          },
          title: 'About Me',
        ),
        portfolioList(
          onTap: () {
            Navigator.pop(context);
          },
          title: 'Resume',
        ),
        portfolioList(
          onTap: () {
            Navigator.pop(context);
          },
          title: 'Portfolio',
        ),
        portfolioList(
          onTap: () {
            Navigator.pop(context);
          },
          title: 'Contact',
        ),
      ]),
    );
  }
}
