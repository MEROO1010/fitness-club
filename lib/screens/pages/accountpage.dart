import 'package:fitness_club/screens/pages/login.dart';
import 'package:fitness_club/screens/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
          body: Container(
              child: Image.asset('assets/images/get_start.png',
                  fit: BoxFit.contain)),
        ),
        Stack(
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: login(),
                      isIos: true,
                      duration: Duration(milliseconds: 400),
                    ),
                  );
                },
                child: Text(
                  'Login',
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(156, 166, 78, 1),
                    onPrimary: Color.fromRGBO(36, 55, 53, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 60),
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              padding: EdgeInsets.only(left: 30, top: 620),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: signup(),
                      isIos: true,
                      duration: Duration(milliseconds: 400),
                    ),
                  );
                },
                child: Text(
                  'SignUp',
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(232, 242, 155, 1),
                    onPrimary: Color.fromRGBO(36, 55, 53, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 60),
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              padding: EdgeInsets.only(left: 30, top: 700),
            ),
          ],
        ),
      ],
    );
  }
}
