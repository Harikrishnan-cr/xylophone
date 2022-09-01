import 'package:flutter/material.dart';
import 'package:xylophone/xylophone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 228, 226, 226)
      ),
      home: const XyloPhoneScreen()
    );
  }
}
