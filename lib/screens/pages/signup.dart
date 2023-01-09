import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
        ),
        Container(
          child: Text(
            'Sign-Up',
            style: TextStyle(
                color: HexColor('#243735'),
                decoration: TextDecoration.none,
                fontFamily: 'Rubik-Medium.ttf'),
          ),
          padding: EdgeInsets.only(left: 110, top: 80),
        ),

        //BACKGROUND IMAGE
        Container(
          child: Image.asset('assets/images/signup-bg.png'),
          padding: EdgeInsets.only(top: 540, left: 40),
        ),

        /*ADD THE TEXT FIELD
        /ADD THE NAME TEXT FILED*/
        Padding(
            padding: EdgeInsets.only(top: 180, left: 30),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Name',
                      prefixIcon: Icon(Icons.person),
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

        //ADD THE EMAIL TEXT FIELD
        Padding(
            padding: EdgeInsets.only(top: 260, left: 30),
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

        //ADD THE PASSWORD TEXT FIELD
        Padding(
            padding: EdgeInsets.only(top: 340, left: 30),
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

        //ADD SIGN-UP BUTTON
        Container(
          padding: EdgeInsets.only(top: 440, left: 30),
          child: TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/main-page');
            },
            child: Text('Sign Up',
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
