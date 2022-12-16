import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:throw_a_party/screens/login_screen.dart';
import 'package:throw_a_party/screens/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    name: "db2",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //FirebaseDatabase database = FirebaseDatabase.instance;
  /*DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
  print(ref.key);
  await ref.set({
    "name": "John",
    "age": 18,
  });*/

  FirebaseApp secondaryApp = Firebase.app('db2');
  FirebaseDatabase database = FirebaseDatabase.instanceFor(app: secondaryApp);
  print("xD");
  //final databaseReference = FirebaseDatabase.instance.ref();
  print(database.ref().key);
  database
      .ref()
      .child("message")
      .set({"text": ":D", "timestamp": DateTime.now().toString()});
}

/*void main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniParty',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEEF1F8),
        primarySwatch: Colors.blue,
        fontFamily: "Intel",
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
