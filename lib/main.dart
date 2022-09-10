import 'package:flutter/material.dart';
import 'package:musical_match/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.grey[300],
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.grey,
              primary: Colors.black,
              secondary: const Color.fromRGBO(210, 173, 50, 1),
              tertiary: Colors.grey[200])),
      home: LoginPage(),
    );
  }
}
