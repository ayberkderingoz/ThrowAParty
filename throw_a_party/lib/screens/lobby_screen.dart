import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:throw_a_party/components/mekan_carousel.dart';
import 'package:throw_a_party/screens/onboarding_screen.dart';
import 'package:throw_a_party/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:throw_a_party/screens/create_lobby_screen.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          'Welcome!',
          style: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          colors: const [
            saris,
            acikmorus,
            pembis,
            mavis,
          ],
        ),
        elevation: 0,
        backgroundColor: Color(0xFFEAEEF6),
        iconTheme: IconThemeData(color: baskamavis),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: visnemsi),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => OnboardingScreen())),
        ),
      ),
      backgroundColor: Color(0xFFEAEEF6),
      body: CarouselComponent(),
    );
  }
}
