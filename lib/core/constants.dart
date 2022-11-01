import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:portfolio/core/colors.dart';

const kHeight = SizedBox(
  height: 10,
);
const kWidth = SizedBox(
  width: 10,
);

//text widget

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
    required this.fsize,
    this.fontWeight,
    this.color,
    this.decoration,
  }) : super(key: key);
  final fontWeight;
  final String title;
  final double fsize;
  final color;
  final decoration;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        textAlign: TextAlign.justify,
        title,
        style: CyrillicFonts.robotoCondensed(
          decoration: decoration,
          color: color,
          fontSize: fsize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

//drawerlistwidget

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
      title: Center(
        child: TextWidget(
          color: kWhiteColor,
          title: title,
          fsize: 17,
        ),
      ),
    );
  }
}
