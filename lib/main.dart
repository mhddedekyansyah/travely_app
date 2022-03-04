import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travely/pages/pages.dart';

void main() {
  runApp(const MaterialApp( 
    debugShowCheckedModeBanner: false,
    home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return Scaffold(
      body: HomePage(),
    );
  }
}