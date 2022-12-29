// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: size.height,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          'images/back.svg',
                          color: Color(0xffd11a1a),
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff000000),
                            fontFamily: 'Poppins'),
                      ),
                      const SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xfff6d2d2), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffD11A1A), width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            // ignore: prefer_const_constructors
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Zenitsu Agatsuma',
                    style: TextStyle(
                        color: Color(0xffD11A1A),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff256D0C)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Active',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 360,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Color(0xffefe8e8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SvgPicture.asset(
                                      'images/user.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                        color: Color(0xff4c4a4a), fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      'images/Vector.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 70,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Color(0xffefe8e8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SvgPicture.asset(
                                      'images/lock.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  Text(
                                    'Change Password',
                                    style: TextStyle(
                                        color: Color(0xff4c4a4a), fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      'images/Vector.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 70,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Color(0xffefe8e8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SvgPicture.asset(
                                      'images/card.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  Text(
                                    'Cards',
                                    style: TextStyle(
                                        color: Color(0xff4c4a4a), fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      'images/Vector.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 70,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Color(0xffefe8e8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SvgPicture.asset(
                                      'images/bell.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  Text(
                                    'Notifications',
                                    style: TextStyle(
                                        color: Color(0xff4c4a4a), fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      'images/Vector.svg',
                                      color: Color(0xff4c4a4a),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
