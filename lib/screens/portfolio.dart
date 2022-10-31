import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextWidget(
              title: 'What I Do ?',
              fsize: 20,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              title: 'I may not be perfect but surely i\'m of some use :-)',
              fsize: 16,
            ),
            CarouselSlider(
              items: [
                cardWidget(
                  child: TextWidget(
                    fsize: 20,
                    title: 'Android\nApplication\nDevelopment',
                  ),
                ),
                cardWidget(
                  child: TextWidget(
                    fsize: 20,
                    title: 'Web\nApplication\nDevelopment',
                  ),
                ),
                cardWidget(
                  child: TextWidget(
                    fsize: 20,
                    title: 'StatisticaAnalysis',
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    Key? key,
    this.child,
  }) : super(key: key);
  final child;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: kButtonColor,
      ),
      child: child,
      duration: Duration(milliseconds: 3),
    );
  }
}
