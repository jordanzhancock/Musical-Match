import 'package:flutter/material.dart';
import 'package:musical_match/screens/login_page.dart';

import 'models/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.grey[300],
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.grey,
              primary: Colors.black,
              secondary: kGoldenColor,
              tertiary: Colors.grey[200])),
      home: LoginPage(),
    );
  }
}
