import 'package:cv/NavBar.widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewMap extends StatefulWidget {
  final VoidCallback toggleTheme;

  WebViewMap({required this.toggleTheme});

@override
_WebViewMapState createState() => _WebViewMapState(toggleTheme: toggleTheme);
}

class _WebViewMapState extends State<WebViewMap> {
  final VoidCallback toggleTheme;

  _WebViewMapState({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCE8F8A),
        title: Text(
          'Localisation',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      drawer: NavBar(toggleTheme),
      body: WebView(
        initialUrl: 'https://www.google.com/maps?q=34.751707,10.729406',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}