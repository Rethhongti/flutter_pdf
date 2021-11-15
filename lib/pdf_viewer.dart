import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class PDFViewerScreen extends StatefulWidget {
  const PDFViewerScreen({Key? key}) : super(key: key);

  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/xample.pdf'),

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Viewer"),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Positioned(
            right: 10,
            bottom: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_circle_down),
              onPressed: () {

              },
            ),
          ),
          PdfView(
            controller: pdfController,
            renderer: (page) => page.render(
              width: page.width * 2,
              height: page.height * 2,
              format: PdfPageFormat.PNG,
              backgroundColor: '#FFFFFF',
            ),
          ),
        ],
      ),
    );
  }
}
