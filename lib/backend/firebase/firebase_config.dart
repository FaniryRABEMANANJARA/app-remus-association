import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBpdOzdSLNKNnzwWXLY2sbqH6LqUhKPIHY",
            authDomain: "remus-ccc64.firebaseapp.com",
            projectId: "remus-ccc64",
            storageBucket: "remus-ccc64.appspot.com",
            messagingSenderId: "864744635617",
            appId: "1:864744635617:web:e2a6e2774ba7f06179cba0",
            measurementId: "G-0X1NTT171C"));
  } else {
    await Firebase.initializeApp();
  }
}
