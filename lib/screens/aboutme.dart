import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/core/text.dart';

import '../core/colors.dart';
import '../widgets/pdf_viewer_widget.dart';

class AboutMe extends StatelessWidget {
  AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: TextWidget(
                    title: 'About Me',
                    fsize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                kHeight,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/image/propic.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ),
                kHeight,
                TextWidget(
                  title: 'Who Am I ?',
                  fsize: 20,
                  fontWeight: FontWeight.bold,
                ),
                kHeight,
                kAboutMe,
                kHeight,
                Center(
                  child: TextWidget(
                    title: 'Technologies & Tools :',
                    fsize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      title: '◾Flutter',
                      fsize: 16,
                    ),
                    TextWidget(
                      title: '◾Dart',
                      fsize: 16,
                    ),
                    TextWidget(
                      title: '◾Python',
                      fsize: 16,
                    ),
                    TextWidget(
                      title: '◾Git',
                      fsize: 16,
                    ),
                  ],
                ),
                Center(
                  child: TextWidget(
                    title: '◾MS Office',
                    fsize: 16,
                  ),
                ),
                kHeight,
                Center(
                  child: TextWidget(
                    title: 'Name : Sonu Raj',
                    fsize: 16,
                  ),
                ),
                Center(
                  child: TextWidget(
                    title: 'Email : sonuraj909@gmail.com',
                    fsize: 16,
                  ),
                ),
                kHeight,
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kButtonColor),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PdfViewer()),
                      );
                    },
                    child: TextWidget(
                      title: 'Resume',
                      fsize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
