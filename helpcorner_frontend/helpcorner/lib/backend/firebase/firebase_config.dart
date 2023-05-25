import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCZ7DqP9c4laMfTz5egiplu3dDDSIhGvMM",
            authDomain: "helpcorner-new.firebaseapp.com",
            projectId: "helpcorner-new",
            storageBucket: "helpcorner-new.appspot.com",
            messagingSenderId: "43294810938",
            appId: "1:43294810938:web:5e1ef50edaf0f6ff26a603",
            measurementId: "G-6W9KNDE88W"));
  } else {
    await Firebase.initializeApp();
  }
}
