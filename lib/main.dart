import 'package:flutter/material.dart';
import 'package:merawala_portfolio/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MERAWALA PORTFOLIO',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          backgroundColor: Colors.black12,
          hoverColor: Colors.black87,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
