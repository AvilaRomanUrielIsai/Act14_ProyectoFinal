import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB065HyUgAZdgvdVEHWHlnJtIgI-tOCG0g",
            authDomain: "proyecto-final-a57dc.firebaseapp.com",
            projectId: "proyecto-final-a57dc",
            storageBucket: "proyecto-final-a57dc.appspot.com",
            messagingSenderId: "396515149458",
            appId: "1:396515149458:web:04887e199bb60a1c4c484b",
            measurementId: "G-M00H8KXL74"));
  } else {
    await Firebase.initializeApp();
  }
}
