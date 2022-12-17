import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import 'package:throw_a_party/constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: turumcu,
      ),
      backgroundColor: turumcu,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*
            CircleAvatar(
                radius: 70, backgroundImage: AssetImage('images/IMG_3709.png')),*/
            Text(
              'Ayberk, Begüm & Ege',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'We hope you enjoy UniParty!',
              style: TextStyle(
                fontFamily: 'Poppins',
                letterSpacing: 2.5,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Color(0xfff07b3f),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: turumcu,
                ),
                title: Text(
                  'ayberkderingoz@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: turumcu,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: turumcu,
                ),
                title: Text(
                  'begumzengin1@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: turumcu,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: turumcu,
                ),
                title: Text(
                  'egeardaozturk@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: turumcu,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
