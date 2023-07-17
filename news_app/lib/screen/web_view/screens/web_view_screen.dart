import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String? initialUrl;
  final String? appbarTitle;
  const WebViewScreen({super.key, required this.initialUrl, this.appbarTitle});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

bool isLoading = true;

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(this.widget.appbarTitle ?? ''),
        ),
        body: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: this.widget.initialUrl,
               onPageFinished: (finish) {
                    setState(() {
                      isLoading = false;
                    });
                  },
            ),
             if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
              else
              Stack(),
          ],
        ),
      );
}
