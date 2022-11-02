import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/screens/aboutme/aboutme.dart';
import 'package:portfolio/screens/contact/contact.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:portfolio/screens/portfolio/portfolio.dart';
import 'package:portfolio/screens/resume/resume.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kButtonColor,
        centerTitle: true,
        title: TextWidget(
          title: 'srfolio',
          fsize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      drawer: Drawer(
        backgroundColor: kButtonColor,
        width: 220,
        child: ListView(
          children: [
            DrawerHeader(
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
            ListTile(
              title: TextWidget(
                color: kWhiteColor,
                title: 'Home',
                fsize: 16,
              ),
              onTap: () {
                changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: TextWidget(
                color: kWhiteColor,
                title: 'About Me',
                fsize: 16,
              ),
              onTap: () {
                changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: TextWidget(
                color: kWhiteColor,
                title: 'Resume',
                fsize: 16,
              ),
              onTap: () {
                changePage(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: TextWidget(
                color: kWhiteColor,
                title: 'Portfolio',
                fsize: 16,
              ),
              onTap: () {
                changePage(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: TextWidget(
                color: kWhiteColor,
                title: 'Contact',
                fsize: 16,
              ),
              onTap: () {
                changePage(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            Home(),
            AboutMe(),
            Resume(),
            Portfolio(),
            Contact(),
          ],
        ),
      ),
    );
  }

  void changePage(int index) {
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}
