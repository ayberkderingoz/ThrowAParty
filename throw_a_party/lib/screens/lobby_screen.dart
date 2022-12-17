import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:throw_a_party/components/mekan_carousel.dart';
import 'package:throw_a_party/screens/onboarding_screen.dart';
import 'package:throw_a_party/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:throw_a_party/screens/create_lobby_screen.dart';
import 'package:throw_a_party/screens/join_lobby_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:throw_a_party/screens/settings_screen.dart';
import 'package:throw_a_party/screens/about_us_screen.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label:("Channels"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: ("Profile"),
          ),
        ],
      ), 
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  mavis,
                  acikmorus,
                  pembis,
                  saris,
                ]),
              ),
              child: Text('UNIPARTY',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Poppins")),
            ),
            ExpansionTile(
              title: GradientText(
                'Create Lobby',
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                colors: const [
                  saris,
                  acikmorus,
                  pembis,
                  mavis,
                ],
              ),
              children: <Widget>[
                GestureDetector(
                  child: SizedBox(
                    width: 310,
                    height: 35,
                    child: Container(
                      child: GradientText(
                        'Create public lobby',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        colors: const [
                          saris,
                          acikmorus,
                          pembis,
                          mavis,
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEEF6),
                      ),
                    ),
                  ),
                  onTap: () {
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateLobbyScreen(isPrivate : false)));
                  },
                ),
                SizedBox(
                  height: 7,
                ),
                GestureDetector(
                  child: SizedBox(
                    width: 310,
                    height: 35,
                    child: Container(
                      child: GradientText(
                        'Create private lobby',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        colors: const [
                          saris,
                          acikmorus,
                          pembis,
                          mavis,
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEEF6),
                      ),
                    ),
                  ),
                  onTap: () {
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateLobbyScreen(isPrivate: true,)));
                  },
                ),
              ],
            ),
            ListTile(
              title: GradientText(
                'Join Lobby',
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                colors: const [
                  saris,
                  acikmorus,
                  pembis,
                  mavis,
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JoinLobbyScreen()));
              },
            ),
            ListTile(
              title: GradientText(
                'Settings',
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                colors: const [
                  saris,
                  acikmorus,
                  pembis,
                  mavis,
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
            ListTile(
              title: GradientText(
                'About us',
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                colors: const [
                  saris,
                  acikmorus,
                  pembis,
                  mavis,
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LobbyScreen()));

                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
