import 'package:creamy_world/components/body.dart';
import 'package:flutter/material.dart';

class SearchTop extends StatefulWidget {
  const SearchTop({Key? key}) : super(key: key);

  @override
  _SearchTopState createState() => _SearchTopState();
}

class _SearchTopState extends State<SearchTop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xffe5bc9d),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}


//Color Code
//#bcae85 