import 'package:flutter/material.dart';
import 'package:portfolio/core/constants.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
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
                title: 'Hi \nI\'m Sonu Raj',
                fsize: 35,
                fontWeight: FontWeight.bold),
            TextWidget(
              title: 'Flutter Developer',
              fsize: 20,
            ),
            kHeight,
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: TextWidget(
                    title: 'Hire Me',
                    fsize: 15,
                  ),
                ),
                kWidth,
                ElevatedButton(
                  onPressed: () {},
                  child: TextWidget(
                    title: 'Download CV',
                    fsize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
