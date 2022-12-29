// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:creamy_world/constant.dart';
import 'package:creamy_world/models/Product.dart';
import 'package:creamy_world/screens/cart.dart';
import 'package:creamy_world/screens/details/details_screen.dart';
import 'package:creamy_world/screens/profile.dart';
import 'package:creamy_world/screens/search_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5bc9d),
      body: SingleChildScrollView(
        // ignore: sized_box_for_whitespace
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: Image(
                                  height: 45.0,
                                  width: 45.0,
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/zenitsu.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Welcome Back,',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.0,
                                    color: Color(0xff000800),
                                  ),
                                ),
                                Text(
                                  'Alisson',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffAA1717)),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications_none,
                          color: Color(0xffAA1717),
                          size: 30.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                      child: SizedBox(
                        //margin: EdgeInsets.all(10),
                        width: 300.0,
                        height: 90.0,
                        child: Text(
                          'Come enjoy various blends of cream.',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SearchTop(),
                            ),
                          ),
                          child: Text(
                            'Top picks',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 240.0,
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SearchTop(),
                            ),
                          ),
                          child: Text(
                            'view all',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    //Sliding options
                    Column(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 150.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 1000),
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          ),
                          items: [
                            //Strawberry scoop
                            Stack(
                              children: [
                                Container(
                                  //margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 130,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffFFEBEB)),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            'Strawberry Scoop',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20.0,
                                              color: Color(0xffE37676),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 7.0,
                                          ),
                                          SizedBox(
                                            height: 40.0,
                                            width: 200.0,
                                            child: Text(
                                              'Ice cold vanilla scoop with choco falovoured cone',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                color: Color(0xff894541),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsScreen(
                                                  product: products[3],
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Shop Now',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.0,
                                                  color: Color(0xffE37676),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*Image(
                                      height: 160.0,
                                      width: 130.0,
                                      fit: BoxFit.fitHeight,
                                      //alignment: Alignment.center,
                                      image: AssetImage('images/4.png'),
                                    ),*/
                                    SizedBox(
                                        height: 160.0,
                                        width: 100.0,
                                        child: Image.asset(
                                          products[3].image,
                                          fit: BoxFit.fitHeight,
                                        )),
                                  ],
                                ),
                              ],
                            ),

                            //Choco scoop
                            Stack(
                              children: [
                                Container(
                                  //margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 130,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffd6c4c2)),
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            'Choco Scoop',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20.0,
                                              color: Color(0xff5E4831),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 7.0,
                                          ),
                                          SizedBox(
                                            height: 40.0,
                                            width: 200.0,
                                            child: Text(
                                              'Ice cold chocolate cream to quench your thirst.',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                color: Color(0xff593628),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          InkWell(
                                              onTap: () => Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetailsScreen(
                                                        product: products[0],
                                                      ),
                                                    ),
                                                  ),
                                              child: Text(
                                                'Shop Now',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.0,
                                                    color: Color(0xff5E4831),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height: 160.0,
                                        width: 100.0,
                                        child: Image.asset(
                                          products[0].image,
                                          fit: BoxFit.fitHeight,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        buildIndicator(),
                      ],
                    ),
                    SizedBox(height: 5),
                    //Search input field
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                          fillColor: Color(0xffFBF9F9),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                width: 0.5, color: Color(0xffEF5350)),
                          ),
                          hintText: 'Search for ice cream',
                          hintStyle: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Poppins',
                            color: Color(0xfff7a1a1),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 35.0,
                            color: Color(0xfff7a1a1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomeScreen(),
                        ),
                      ),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),

                    SizedBox(
                      height: 5.0,
                    ),

                    //Items Underneath recommended

                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: products[1],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 175.0,
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: products[1].home),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.star_border,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SvgPicture.asset(
                                              'assets/cart.svg',
                                              color: Colors.white,
                                              width: 15,
                                              height: 17,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          products[1].image,
                                          height: 120,
                                          width: 120,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[1].title,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                color: kTextLightColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 30,
                                              child: Text(
                                                products[1].description,
                                                style: const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 15.0,
                            ),

                            //Second Stack
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: products[2],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 175.0,
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: products[2].home),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.star_border,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SvgPicture.asset(
                                              'assets/cart.svg',
                                              color: Colors.white,
                                              width: 15,
                                              height: 17,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          products[2].image,
                                          height: 120,
                                          width: 120,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[2].title,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                color: kTextLightColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 30,
                                              child: Text(
                                                products[2].description,
                                                style: const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //Row 2 geeeeeeeeee
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: products[1],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 175.0,
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: products[1].home),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.star_border,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SvgPicture.asset(
                                              'assets/cart.svg',
                                              color: Colors.white,
                                              width: 15,
                                              height: 17,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          products[1].image,
                                          height: 120,
                                          width: 120,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[1].title,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                color: kTextLightColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 30,
                                              child: Text(
                                                products[1].description,
                                                style: const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 15.0,
                            ),

                            //Second Stack
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: products[2],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 175.0,
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: products[2].home),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.star_border,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SvgPicture.asset(
                                              'assets/cart.svg',
                                              color: Colors.white,
                                              width: 15,
                                              height: 17,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          products[2].image,
                                          height: 120,
                                          width: 120,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[2].title,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                color: kTextLightColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 30,
                                              child: Text(
                                                products[2].description,
                                                style: const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      /*bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(),
        child: NavigationBar(
            selectedIndex: trans,
            onDestinationSelected: (index) =>
                setState(() => this.trans = index),
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
                  height: 20,
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
                  height: 20,
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
      ),*/
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30.0,
        unselectedFontSize: 0,
        selectedFontSize: 05,
        selectedItemColor: Colors.red,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'images/home.svg',
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'images/star.svg',
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'images/pan.svg',
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '___',
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),*/
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 2,
        effect: JumpingDotEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Colors.white,
            activeDotColor: Color(0xffB22424)),
      );
}
