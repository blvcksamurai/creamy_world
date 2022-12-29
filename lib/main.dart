import 'package:creamy_world/screens/home.dart';
import 'package:creamy_world/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to the World of Cream',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        fontFamily: 'Poppins',
        primarySwatch: Colors.red,
      ),
      home: const ProfileScreen(),
    );
  }
}
