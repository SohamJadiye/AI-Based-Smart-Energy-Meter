import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application/welcome_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyBY-BnjjAOx1L8EfEMuXHD_Sl6-A5hvza4", appId: "1:326061114111:android:8c8cbf67ea8c14656b42ca", messagingSenderId: "326061114111", projectId: "smart-home-flutter-a")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}