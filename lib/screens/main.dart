import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/screens/aboutme.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/resume.dart';
import 'package:portfolio/widgets/drawer_widget.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kButtonColor,
        centerTitle: true,
        title: TextWidget(
          title: 'PORTFOLIO',
          fsize: 20,
        ),
      ),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              children: [
                Home(),
                AboutMe(),
                Resume(),
                Portfolio(),
                Contact(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
