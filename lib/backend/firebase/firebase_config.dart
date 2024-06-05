import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDSjvSBM2AVHaqUHWoX-En7Wmv4aNyyMlY",
            authDomain: "newbie-austria-rlklv4.firebaseapp.com",
            projectId: "newbie-austria-rlklv4",
            storageBucket: "newbie-austria-rlklv4.appspot.com",
            messagingSenderId: "304700033643",
            appId: "1:304700033643:web:d09ab828636fb4a164bf2e"));
  } else {
    await Firebase.initializeApp();
  }
}
