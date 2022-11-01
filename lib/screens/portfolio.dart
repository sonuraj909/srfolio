import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Future<void>? _launched;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.github.com', path: 'sonuraj909');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
          child: Column(
            children: [
              const TextWidget(
                title: 'What I Do ?',
                fsize: 30,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                title: 'I may not be perfect but surely i\'m of some use :-)',
                fsize: 18,
              ),
              kHeight,
              CarouselSlider(
                items: const [
                  cardWidget(
                    child: Center(
                      child: TextWidget(
                        fsize: 20,
                        title: 'Android\nApplication\nDevelopment',
                      ),
                    ),
                  ),
                  cardWidget(
                    child: Center(
                      child: TextWidget(
                        fsize: 20,
                        title: 'Web\nApplication\nDevelopment',
                      ),
                    ),
                  ),
                  cardWidget(
                    child: Center(
                      child: TextWidget(
                        fsize: 20,
                        title: 'Statistical Analysis',
                      ),
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
              kHeight,
              const TextWidget(
                title: 'Portfolio',
                fsize: 30,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                title: 'Here are few samples of my previous work :-)',
                fsize: 18,
              ),
              kHeight,
              CarouselSlider(
                items: [
                  cardWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.money,
                          size: 30,
                        ),
                        TextWidget(
                          fsize: 18,
                          title: 'Money Manager App',
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    child2: Center(
                      child: TextWidget(
                        fsize: 16,
                        title:
                            'Personal finance management app for expense and income tracking',
                      ),
                    ),
                  ),
                  cardWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.stream_rounded,
                          size: 30,
                        ),
                        TextWidget(
                          fsize: 18,
                          title: 'Atom',
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    child2: Center(
                      child: TextWidget(
                        fsize: 16,
                        title:
                            'Tried to clone the famous OTT platform Netflix. It\'s basically in-app not exactly like orginal App.',
                      ),
                    ),
                  ),
                  cardWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.music_note_rounded,
                          size: 30,
                        ),
                        TextWidget(
                          fsize: 18,
                          title: 'Sonics',
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    child2: Center(
                      child: TextWidget(
                        fsize: 16,
                        title:
                            'It\'s basically a music player currently still work in progress.',
                      ),
                    ),
                  ),
                  cardWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        TextWidget(
                          fsize: 18,
                          title: 'Flood Monitoring System',
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    child2: Center(
                      child: TextWidget(
                        fsize: 16,
                        title:
                            'It\'s my college final year project.Flood prediction using different sensor and Raspberry Pi.',
                      ),
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
              kHeight,
              IconButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(toLaunch);
                }),
                icon: Image.asset(
                  'assets/image/github.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    Key? key,
    this.child,
    this.child2,
  }) : super(key: key);
  final child;
  final child2;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Container(
        width: 200,
        height: 180,
        decoration: BoxDecoration(
          color: kButtonColor,
        ),
        child: child,
      ),
      back: Container(
        width: 200,
        height: 180,
        decoration: BoxDecoration(
          color: kButtonColor,
        ),
        child: child2,
      ),
    );
  }
}
