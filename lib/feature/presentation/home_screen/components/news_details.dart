import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  NewsDetails({super.key, required this.newsDetailsWidget});

  var newsDetailsWidget;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

// final Completer<WebViewController> _controller = Completer<WebViewController>();

// final WebViewController controller =

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Details"),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onWebResourceError: (WebResourceError error) {
                print(error);
              },
              onNavigationRequest: (NavigationRequest request) {
                if (request.url.startsWith('https://www.google.com/')) {
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(
            Uri.parse(widget.newsDetailsWidget.url.toString()),
          ),
      ),
    );
  }
}
