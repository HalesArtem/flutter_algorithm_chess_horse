//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//class MyBody extends StatelessWidget{
//  Widget build(BuildContext context){
//    return new Center(
//      child: new Column(
//        children: <Widget>[new Text('Hello'), new FlatButton(onPressed: () async {
//          const url = 'https://google.com';
//
//          if(await canLaunch(url)){
//            await launch(url);
//          }else {
//            throw 'Coult not launch $url';
//          }
//        } ,
//            child: new Text('hello'),
//            color: Colors.black,
//            textColor: Colors.red,
//        )],
//      ),
//    );
//
//  }
//
//}
//
//
//void main(){
//  runApp(MaterialApp(debugShowCheckedModeBanner: false,
//    home: new Scaffold(
//      appBar: new AppBar(title: new Text('algorithm chess horse')),
//      body: new MyBody()
//    ),
//    )
//  );
//}

//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'dart:convert';
//import 'package:webview_flutter/webview_flutter.dart';
//
//class WebViewTest extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _WebViewTestState();
//  }
//}
//
//class _WebViewTestState extends State<WebViewTest> {
//  //
//  WebViewController _webViewController;
//  String filePath = 'assets/index.html';
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Webview Demo')),
//      body: WebView(
//        initialUrl: '',
//        javascriptMode: JavascriptMode.unrestricted,
//        onWebViewCreated: (WebViewController webViewController) {
//          _webViewController = webViewController;
//          _loadHtmlFromAssets();
//        },
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: const Icon(Icons.add),
//        onPressed: () {
//          _webViewController.evaluateJavascript('add(10, 10)');
//        },
//      ),
//    );
//  }
//
//  _loadHtmlFromAssets() async {
//    String fileHtmlContents = await rootBundle.loadString(filePath);
//    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
//        mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
//        .toString());
//  }
//}
//
//
//void main(){
//  runApp(MaterialApp(debugShowCheckedModeBanner: false,
//    home: new Scaffold(
//      appBar: new AppBar(title: new Text('algorithm chess horse')),
//      body: new MyBody()
//    ),
//    )
//  );
//
//
//
//
//
//
//
//
//
//

import 'package:flutter/material.dart';
import 'load_html_file_task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoadHTMLFileToWEbView(),
    );
  }
}
