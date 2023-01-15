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
  get key => null;

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
        Container(child: MyNavigationBar(key: key)),
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

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({required Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                //title: Text('Home'),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                //title: Text('Search'),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              //title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
