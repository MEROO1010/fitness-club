import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
        ),
        Container(
          child: Image.asset('assets/images/Group 7.png'),
          padding: EdgeInsets.only(top: 540),
        ),
        Container(
          child: Text(
            'Log-In',
            style: TextStyle(decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
