import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class githubpage extends StatefulWidget {
   githubpage({super.key,required this.url});
String  url;
  @override
  State<githubpage> createState() => _githubpageState();
}

class _githubpageState extends State<githubpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}