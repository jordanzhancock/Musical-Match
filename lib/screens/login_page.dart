import 'package:flutter/material.dart';
import 'package:musical_match/models/constants.dart';
import 'package:musical_match/screens/registration_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Music Match')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Music symbol
            // Image.asset(
            //   'lib/images/music_symbol.png',
            //   fit: BoxFit.scaleDown,
            // ),
            // Text Input for email / username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email')),
                ),
              ),
            ),
            // Space in between text fields
            const SizedBox(
              height: 10,
            ),
            // Text input for password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                // Padding for the input text
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                    obscureText: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // HyperLink text for registration
            const Text("Don't have an account? Click here"),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationPage.route);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kGoldenColor),
                ),
                child: const Text('Login'))
          ],
        ),
      ),
    ));
  }
}
