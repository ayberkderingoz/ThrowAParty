import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

class FirebaseManager {
  late FirebaseManager instance;

  FirebaseManager() {
    instance = this;
  }

  void init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    instance = this;
  }
}
