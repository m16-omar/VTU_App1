import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multistor/views/screens/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyB6MxKVrMKUejHHAK2-3Ja2Qx2uYBUlanc",
              appId: "1:999831163754:android:7f40ea65453a2419d7cb13",
              messagingSenderId: "999831163754",
              projectId: "multistor-4bde1",
              storageBucket: "gs://multistor-4bde1.appspot.com"),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
