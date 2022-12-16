import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:throw_a_party/screens/onboarding_screen.dart';
import 'package:throw_a_party/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            //sistem yöneticisi girişi
            GradientText(
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
            SizedBox(height: 40),

            

            

            //Lobi oluşturma butonu
            Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      mavis,
                      acikmorus,
                      pembis,
                      saris,
                    ],
                  ),
                  border: Border.all(color: Color(0xBFAA00)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LobbyScreen())),
                    child: Text('Create a lobby',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Poppins")),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    ))),
            SizedBox(height: 30),
            //Lobiye katılma butonu
            Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      mavis,
                      acikmorus,
                      pembis,
                      saris,
                    ],
                  ),
                  border: Border.all(color: Color(0xBFAA00)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LobbyScreen())),
                    child: Text('Join a lobby',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Poppins")),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    ))),
            SizedBox(height: 30),
          ],
            ))));
  }
}
