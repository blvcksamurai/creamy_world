import 'package:creamy_world/screens/details/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
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
                'Cart',
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
          SizedBox(
            height: 20.0,
          ),
          //Generated Item 1
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              //Text and details
              Container(
                height: 80,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          //Generated item 2
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              //Text and details
              Container(
                height: 80,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              //Text and details
              Container(
                height: 80,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),

          //Props
        ],
      ),
    );
  }
}
