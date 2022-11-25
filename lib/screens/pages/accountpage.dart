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
        Row(
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              padding: EdgeInsets.only(left: 150, top: 620),
              //width: 200,
              // height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
