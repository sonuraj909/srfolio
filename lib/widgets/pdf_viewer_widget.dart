import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kButtonColor,
        title: TextWidget(
          title: 'Portfolio',
          fsize: 22,
          color: kWhiteColor,
        ),
      ),
      body: SfPdfViewer.asset(
        'assets/pdf/Sonu_Raj_CV.pdf',
      ),
    );
  }
}
