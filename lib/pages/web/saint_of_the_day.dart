import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SaintOfTheDayWebPage extends StatefulWidget {
  final String url;
  final String title;

  const SaintOfTheDayWebPage({Key? key, required this.url, required this.title})
      : super(key: key);
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
        title: Text(widget.title),
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
