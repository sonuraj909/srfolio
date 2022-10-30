import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

const kHeight = SizedBox(
  height: 10,
);
const kWidth = SizedBox(
  width: 10,
);

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
    required this.fsize,
    this.fontWeight,
  }) : super(key: key);
  final fontWeight;
  final String title;
  final double fsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CyrillicFonts.robotoCondensed(
        fontSize: fsize,
        fontWeight: fontWeight,
      ),
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
      title: TextWidget(
        title: title,
        fsize: 17,
      ),
    );
  }
}
