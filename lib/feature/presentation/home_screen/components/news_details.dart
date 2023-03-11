import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  NewsDetails({super.key, required this.newsDetailsWidget});
  var newsDetailsWidget;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

final Completer<WebViewController> _controller = Completer<WebViewController>();

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Details"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: WebView(
        initialUrl: widget.newsDetailsWidget!.url ?? 'https://flutter.dev',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
