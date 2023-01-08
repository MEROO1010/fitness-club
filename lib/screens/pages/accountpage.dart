import 'package:fitness_club/screens/pages/login.dart';
import 'package:fitness_club/screens/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:hexcolor/hexcolor.dart';

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
          body:
              Container(child: Image.asset('assets/images/create_account.png')),
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
                    primary: HexColor('#4F4F4F'),
                    onPrimary: HexColor('#D0D4D5'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 60),
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              padding: EdgeInsets.only(left: 50, top: 340),
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
                    primary: HexColor('#B7B7B7'),
                    onPrimary: HexColor('#243735'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 60),
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              padding: EdgeInsets.only(left: 50, top: 440),
            ),
          ],
        ),
      ],
    );
  }
}
