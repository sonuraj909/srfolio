import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/core/constants.dart';

import '../core/text.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  title: 'Experience',
                  fsize: 30,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    TextWidget(
                      title: 'Chris Global Traders',
                      fsize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      title: '| Back Office Executive',
                      fsize: 16,
                    ),
                  ],
                ),
                TextWidget(
                  title: 'Jun 2019 - Present | Thiruvalla, PTA',
                  fsize: 15,
                ),
                kCompanyexp,
                TextWidget(
                  title: 'Education',
                  fsize: 30,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  title: 'APJ Abdul Kalam Technological University',
                  fsize: 18,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  title: '▪️ BTech in Computer Science',
                  fsize: 16,
                ),
                TextWidget(
                  title: '▪️ Kottayam Institute of Technology and Science',
                  fsize: 15,
                ),
                TextWidget(
                  title: '▪️ 2015-2019 | Chengalam, KTYM',
                  fsize: 14,
                ),
                kHeight,
                TextWidget(
                  title: 'DHSE',
                  fsize: 18,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  title: '▪️ Higher Secondary',
                  fsize: 16,
                ),
                TextWidget(
                  title: '▪️ NSS HSS Thadiyoor',
                  fsize: 15,
                ),
                TextWidget(
                  title: '▪️ 2013-2015 | Thadiyoor, PTA',
                  fsize: 14,
                ),
                kHeight,
                TextWidget(
                  title: 'SSLC',
                  fsize: 18,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  title: '▪️ High School',
                  fsize: 16,
                ),
                TextWidget(
                  title: '▪️ St. Behanans',
                  fsize: 15,
                ),
                TextWidget(
                  title: '▪️ 2013-2015 | Vennikulam, PTA',
                  fsize: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
