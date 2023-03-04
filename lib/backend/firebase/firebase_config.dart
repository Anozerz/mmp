import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDMMun8FIZhLKPH0qUlOmLNh4aKt5PO8c4",
            authDomain: "mmp-app-7170e.firebaseapp.com",
            projectId: "mmp-app-7170e",
            storageBucket: "mmp-app-7170e.appspot.com",
            messagingSenderId: "844479837411",
            appId: "1:844479837411:web:95b07b78694018ed9381d6"));
  } else {
    await Firebase.initializeApp();
  }
}
