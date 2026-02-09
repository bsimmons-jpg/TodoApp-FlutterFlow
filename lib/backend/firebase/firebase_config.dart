import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCf9GTQKF6FHGj9Rp-BWQwCBGSTJ9hYNLE",
            authDomain: "to-do-app-v8prwn.firebaseapp.com",
            projectId: "to-do-app-v8prwn",
            storageBucket: "to-do-app-v8prwn.firebasestorage.app",
            messagingSenderId: "237473571624",
            appId: "1:237473571624:web:5a7cfaca91afbe99b3261d"));
  } else {
    await Firebase.initializeApp();
  }
}
