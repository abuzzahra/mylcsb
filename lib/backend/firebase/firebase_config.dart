import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAZhHxw7y1gTDkL4_FDhlQKKf-9sr4_qBU",
            authDomain: "mylcsb.firebaseapp.com",
            projectId: "mylcsb",
            storageBucket: "mylcsb.appspot.com",
            messagingSenderId: "833761622900",
            appId: "1:833761622900:web:7ecae09802b216295fca21",
            measurementId: "G-38930RCRBL"));
  } else {
    await Firebase.initializeApp();
  }
}
