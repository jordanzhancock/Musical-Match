import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musical_match/screens/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const CircleAvatar(),
          Row(
            children: [
              const Text('Jordan Hancock'),
              const Text('city + state'),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Tell everyone about yourself..',
                ),
                maxLength: 240,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Save Changes'))
            ],
          )
        ],
      ),
    );
  }
}
