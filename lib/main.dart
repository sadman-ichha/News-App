import 'package:flutter/material.dart';
import 'package:news_app/feature/presentation/splash_screen/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: "Nunito",
      ),
      home: const SplashScreen(),
    );
  }
}
