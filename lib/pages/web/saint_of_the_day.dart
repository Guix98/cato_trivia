import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SaintOfTheDayWebPage extends StatefulWidget {
  @override
  State<SaintOfTheDayWebPage> createState() => _SaintOfTheDayWebPageState();
}

class _SaintOfTheDayWebPageState extends State<SaintOfTheDayWebPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Santo del día'),
      ),
      body: WebView(
        initialUrl: 'https://www.vaticannews.va/es/santos.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
