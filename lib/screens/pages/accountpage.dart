import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(child: Image.asset('assets/images/get_start.png')),
        ),
        Container(
          child: TextButton(onPressed: () {}, child: Text('Get Start')),
        )
      ],
    );
  }
}
