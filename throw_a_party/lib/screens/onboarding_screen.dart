import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              //height: 100,
              width: MediaQuery.of(context).size.width * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset("assets/Backgrounds/Spline.png")),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
          )),
          RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 20),
            child: SizedBox(),
          )),
          SafeArea(
              child: Column(
            children: [
              SizedBox(
                width: 260,
                child: Column(
                  children: [
                    Text("Plan perfect parties",
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: "Poppins",
                          height: 1.2,
                        )),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
