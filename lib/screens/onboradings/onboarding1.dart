import 'dart:ui';

import 'package:fitness_club/screens/pages/accountpage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key, required String title});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
        IntroductionSliderItem(
          backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding-1.png')),
        ),
        IntroductionSliderItem(
          backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding-2.png')),
        ),
        IntroductionSliderItem(
          backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding-3.png')),
        ),
        IntroductionSliderItem(
          backgroundImageDecoration: BackgroundImageDecoration(
              image: AssetImage('assets/images/onboarding-4.png')),
        ),
      ],
      done: Done(
        child: Icon(Icons.done, color: Colors.white),
        home: account(),
      ),
      next: Next(
          child: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      )),
      back: Back(
          child: Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 28,
      )),
      dotIndicator: DotIndicator(
        selectedColor: Colors.white,
      ),
    );
  }
}
