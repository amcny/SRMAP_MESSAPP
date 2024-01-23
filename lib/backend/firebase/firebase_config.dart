import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA-Ht3vj_H1foT6VQid-A1fxDvr1cLjcFo",
            authDomain: "srmap-676c7.firebaseapp.com",
            projectId: "srmap-676c7",
            storageBucket: "srmap-676c7.appspot.com",
            messagingSenderId: "383468578019",
            appId: "1:383468578019:web:7b0ce71e972377918151d6",
            measurementId: "G-5LXKV5BREH"));
  } else {
    await Firebase.initializeApp();
  }
}
