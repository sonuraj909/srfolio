import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: 'Contact Info',
                fsize: 22,
              ),
              kHeight,
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kButtonColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      title:
                          'Sonu Raj\nEzhavanparambil House\nKolabhagom p.o Thadiyoor\nPathanamthitta district\nKerala, India',
                      fsize: 16,
                    ),
                    TextWidget(
                      title: 'Email : sonuraj909@gmail.com',
                      fsize: 16,
                    ),
                    TextWidget(
                      title: 'Mob no : 8287073797',
                      fsize: 16,
                    ),
                  ],
                ),
              ),
              kHeight2,
              get_in_touch(),
            ],
          ),
        ),
      ),
    );
  }
}

class get_in_touch extends StatelessWidget {
  const get_in_touch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: TextWidget(title: 'Get In Touch', fsize: 22)),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl(
                  Uri(
                    scheme: 'tel',
                    path: '+918287073797',
                  ),
                );
              },
              child: _ContactButton(
                icon: Icon(Icons.call),
              ),
            ),
            kWidth,
            InkWell(
              onTap: () {
                launchUrl(
                  Uri(scheme: 'mailto', path: 'sonuraj909@gmail.com'),
                );
              },
              child: _ContactButton(
                icon: Icon(Icons.email_rounded),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kButtonColor,
      ),
      child: icon,
    );
  }
}
