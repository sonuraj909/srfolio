import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/image/coverpic.jpeg'),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 150,
          left: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                color: kWhiteColor,
                title: 'Hi,',
                fsize: 35,
                fontWeight: FontWeight.bold),
            TextWidget(
                color: kWhiteColor,
                title: 'I\'m Sonu Raj',
                fsize: 35,
                fontWeight: FontWeight.bold),
            TextWidget(
              color: kWhiteColor,
              title: 'Flutter Developer',
              fsize: 20,
            ),
            kHeight,
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kButtonColor),
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri(scheme: 'mailto', path: 'sonuraj909@gmail.com'),
                    );
                  },
                  child: TextWidget(
                    title: 'Hire Me',
                    fsize: 15,
                  ),
                ),
                kWidth,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
