import 'package:flutter/material.dart';
import 'package:flutter_drawer/pages/login.dart';
import 'package:flutter_drawer/screens/about_us.dart';
import 'package:flutter_drawer/screens/home_screen.dart';

import 'routes/routes.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.green, fontFamily: 'OldEnglish',fontSize: 20.0 ),
        )
      ),

      routes: {
        PageRoutes.home : (context)=> const HomeScreen(),
        PageRoutes.about: (context)=> const AboutUsScreec(),

      },
    );
  }
}