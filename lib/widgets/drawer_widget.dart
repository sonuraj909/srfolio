import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kButtonColor,
      width: 220,
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
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/propic.jpeg')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                kHeight,
                Text(
                  'Sonu Raj',
                  style: CyrillicFonts.robotoCondensed(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
