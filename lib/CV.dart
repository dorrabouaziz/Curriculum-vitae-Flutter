import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:cv/NavBar.widget.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class CV extends StatefulWidget {
  @override
  _CVState createState() => _CVState();
}

class _CVState extends State<CV> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mon CV',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadPDF();
        },
      ),
    );
  }

  void _loadPDF() async {
    final ByteData data = await rootBundle.load('assets/CV.pdf');
    final Uint8List bytes = data.buffer.asUint8List();
    final base64PDF = base64Encode(bytes);

    _controller.loadUrl('data:application/pdf;base64,$base64PDF');
  }
}
