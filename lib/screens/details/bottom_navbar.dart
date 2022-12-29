import 'package:creamy_world/screens/cart.dart';
import 'package:creamy_world/screens/details/profile_tab.dart';
import 'package:creamy_world/screens/home.dart';
import 'package:creamy_world/screens/search_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  bool flag = true;

  final screens = [
    const HomeScreen(),
    const SearchTop(),
    const CartScreen(),
    const ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(backgroundColor: Color(0xfffafafa)),
        child: NavigationBar(
            selectedIndex: _index,
            onDestinationSelected: (index) =>
                setState(() => this._index = index),
            height: 50,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: [
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'images/home.svg',
                  height: 20,
                  color: Color(0xffd11a1a),
                ),
                icon: SvgPicture.asset(
                  'images/home.svg',
                  color: Colors.black,
                ),
                label: ' ',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'images/star.svg',
                  height: 20,
                  color: Color(0xffd11a1a),
                ),
                icon: SvgPicture.asset(
                  'images/star.svg',
                  color: Colors.black,
                ),
                label: ' ',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(
                  'images/cart.svg',
                  height: 20,
                  color: Color(0xffd11a1a),
                ),
                icon: SvgPicture.asset(
                  'images/cart.svg',
                  height: 20,
                  color: Colors.black,
                ),
                label: ' ',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xffd11a1a),
                ),
                icon: Icon(Icons.account_circle_outlined),
                label: ' ',
              ),
            ]),
      ),
    );
  }
}
