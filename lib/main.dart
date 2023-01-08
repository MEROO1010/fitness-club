import 'package:fitness_club/screens/onboradings/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(splashScreen());
}

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: onboarding1(
        title: '',
      ),
      duration: 8000,
      imageSize: 130,
      imageSrc: "assets/images/first_logo.png",
      text: "For Best Healthily Life Style",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 34.0,
      ),
      colors: [
        // Colors.purple,
        //  Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Color.fromARGB(255, 106, 255, 143),
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}
