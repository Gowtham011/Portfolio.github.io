import 'package:flutter/material.dart';
import 'portfoliopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gowtham-Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: PortfolioPage(),
    );
  }
}
