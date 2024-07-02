import 'package:flutter/material.dart';
import 'package:simpleshoppingapp/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Shopping app',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WelcomScreen(),
    );
  }
}
