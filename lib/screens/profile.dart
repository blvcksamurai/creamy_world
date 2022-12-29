import 'package:creamy_world/screens/details/bottom_navbar.dart';
import 'package:creamy_world/screens/details/profile_tab.dart';
import 'package:creamy_world/screens/home.dart';
import 'package:creamy_world/screens/search_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /*bool flag = true;

  final tabs = [
    HomeScreen(),
    SearchTop(),
    SearchTop(),
    ProfileScreen(),
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProfileTab(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
