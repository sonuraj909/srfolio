import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/screens/aboutme.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/resume.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final pages = [
    Home(),
    AboutMe(),
    Resume(),
    Portfolio(),
    Contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenMainPage.selectedIndexNotifier,
      builder: (BuildContext cxt, int value, Widget? _) {
        return Scaffold(
          drawer: DrawerWidget(selectedIndexNotifier: selectedIndexNotifier),
          body: SafeArea(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
          )),
        );
      },
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required this.selectedIndexNotifier,
  }) : super(key: key);

  final ValueNotifier<int> selectedIndexNotifier;

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
            ScreenMainPage.selectedIndexNotifier.value = 0;
            Navigator.pop(context);
          },
          title: 'Home',
        ),
        portfolioList(
          onTap: () {
            ScreenMainPage.selectedIndexNotifier.value = 1;
            Navigator.pop(context);
          },
          title: 'About Me',
        ),
        portfolioList(
          onTap: () {
            ScreenMainPage.selectedIndexNotifier.value = 2;
            Navigator.pop(context);
          },
          title: 'Resume',
        ),
        portfolioList(
          onTap: () {
            ScreenMainPage.selectedIndexNotifier.value = 3;
            Navigator.pop(context);
          },
          title: 'Portfolio',
        ),
        portfolioList(
          onTap: () {
            ScreenMainPage.selectedIndexNotifier.value = 4;
            Navigator.pop(context);
          },
          title: 'Contact',
        ),
      ]),
    );
  }
}

class portfolioList extends StatelessWidget {
  const portfolioList({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap;
      },
      title: Text(
        title,
        style: CyrillicFonts.robotoCondensed(
          fontSize: 17,
        ),
      ),
    );
  }
}
