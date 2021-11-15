import 'package:flutter/material.dart';
import 'package:flutter_callback/app.dart';
import 'package:flutter_callback/home_details.dart';
import 'package:flutter_callback/pdf_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PDFViewerScreen(),
    );
  }
}





