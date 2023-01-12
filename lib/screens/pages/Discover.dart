import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:page_transition/page_transition.dart';

import 'options/Recommended.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: HexColor('#E9E9E9'),
        ),

        //TITLE
        Container(
          child: Text(
            'Dicover',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: HexColor('#4F4F4F'),
                fontWeight: FontWeight.bold,
                fontFamily: 'Rubik-Medium.ttf'),
          ),
          padding: EdgeInsets.only(left: 122, top: 40),
        ),

        //CRATE THE LISTVIEW
        ListView(
          children: [
            Stack(
              children: [
                // ADD RECOMMENDED BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/recommended.png')),
                  padding: EdgeInsets.only(top: 120, left: 4),
                ),
                //ADD eSSENTIALS BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Essentials.png')),
                  padding: EdgeInsets.only(top: 320, left: 4),
                ),
                //ADD LIFE STYLE BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Life Style.png')),
                  padding: EdgeInsets.only(top: 520, left: 4),
                ),
                //ADD YOGA BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/yoga.png')),
                  padding: EdgeInsets.only(top: 720, left: 4),
                ),
                //ADD CARDIO BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Cardio.png')),
                  padding: EdgeInsets.only(top: 920, left: 4),
                ),
                //ADD MORNING MOTIVATION BUTTON
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child:
                          Image.asset('assets/images/Morning motivation.png')),
                  padding: EdgeInsets.only(top: 1120, left: 4),
                ),
              ],
            )
          ],
        ),
        Container(
          child: nav(),
        ),
      ],
    );
  }
}

class nav extends StatelessWidget {
  const nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.task_outlined,
              backgroundColor: HexColor('#E8F29B'),
              extras: {"label": "Tasks"}),
          FluidNavBarIcon(
              icon: Icons.person,
              backgroundColor: Color(0xFFEC4134),
              extras: {"label": "bookmark"}),
        ],
      ),
      padding: EdgeInsets.only(top: 760),
    );
  }
}
