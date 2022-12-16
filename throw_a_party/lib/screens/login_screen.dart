import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:throw_a_party/screens/onboarding_screen.dart';
import 'package:throw_a_party/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: baskamavis),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: visnemsi),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnboardingScreen())),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.language, color: visnemsi),
                )),
            Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardingScreen()));
                  },
                  icon: Icon(Icons.dark_mode, color: pembis, size: 30),
                ))
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              height: 100,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 35,
                  color: visnemsi,
                  shadows: [
                    Shadow(
                      blurRadius: 7.0,
                      color: acikpembis,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText('UniParty'),
                  ],
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(height: 30),
            //sistem yöneticisi girişi
            GradientText(
              'Login',
              style: const TextStyle(
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

            //kullanıcı adı
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
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
                      border: Border.all(color: const Color(0xBFAA00)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                          ),
                        )))),
            SizedBox(height: 40),

            //şifre
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
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
                    border: Border.all(color: Color(0XBFAA00)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
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
                            border: Border.all(color: Color(0XBFAA00)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ))),
                )),
            const SizedBox(height: 40),

            //giriş yap butonu

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
                    onPressed: () {},
                    child: Text('Giriş yap',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                    )))
          ],
        ))));
  }
}
