import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("This is user profile"),
        ],
      ),
    );
  }
}
