import 'package:flutter/material.dart';

import 'currency_converter/currect_converter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Converter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Padding(
        padding: EdgeInsets.all(10),
        child: CurrecyConverter(),
      ),
    );
  }
}
