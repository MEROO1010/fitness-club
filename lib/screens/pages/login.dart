import 'package:fitness_club/screens/pages/Discover.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

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
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Rubik-Medium.ttf',
                color: HexColor('#243735')),
          ),
          padding: EdgeInsets.only(left: 120, top: 100),
        ),
        Padding(
            padding: EdgeInsets.only(top: 280, left: 30),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: HexColor('#D0D4D5'),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              width: 340,
            )),
        Padding(
            padding: EdgeInsets.only(top: 380, left: 30),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: HexColor('#D0D4D5'),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              width: 340,
            )),
        Container(
          padding: EdgeInsets.only(top: 500, left: 30),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: Discover(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
            child: Text('Login',
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Rubik-SemiBold.ttf",
                    fontWeight: FontWeight.bold,
                    color: HexColor("#D0D4D5"))),
            style: ElevatedButton.styleFrom(
                primary: HexColor("#4F4F4F"),
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                minimumSize: Size(340, 50)),
          ),
        )
      ],
    );
  }
}
