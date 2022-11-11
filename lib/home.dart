// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebView extends StatefulWidget {
//     String url = "https://presensipkl.smkniu.sch.id/mGvwLJfkc4zOJ7As9eEvA==";

//     @override
//     createState() => _WebViewState(this.url);
// }

// class _WebViewState extends State<WebView> {
//     _WebViewState(this._url);
  
//     String _url;
    
//     bool loading = true;
//     WebViewController _controller;
    
//     final Completer<WebViewController> _controllerCompleter = Completer<WebViewController>();
    
//     Future<bool> _onWillPop(BuildContext context) async {
//         if (await _controller.canGoBack()) {
//             _controller.goBack();
//             return Future.value(false);
//         } else {
//             return Future.value(true);
//         }
//     }
    
//     Future<bool> startSplashScreen() async {
//         var duration = const Duration(seconds: 3);
        
//         await Timer(
//             duration,
//             () => setState(() => loading = false ),
//         );
        
//         return false;
//     }
    
//     @override
//     void initState() {
//         super.initState();
//         startSplashScreen();
//     }
    
//     @override
//     Widget build(BuildContext context) {
//         return WillPopScope(
//             onWillPop: () => _onWillPop(context), 
//             child: Scaffold(
//                 body: loading == true ? Center(
//                     child: Text(
//                         'APP LOGO',
//                         style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                         ),
//                     ),
//                 ) : SafeArea(
//                     child: WebView(
//                         key: UniqueKey(),
//                         javascriptMode: JavascriptMode.unrestricted,
//                         initialUrl: _url,
//                         onWebViewCreated: (WebViewController webViewController) {
//                             _controllerCompleter.complete(webViewController);
//                         },
//                     ),
//                 ),
//             ),
//         );
//     }
// }
