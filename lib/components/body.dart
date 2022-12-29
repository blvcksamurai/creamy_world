import 'package:creamy_world/models/Product.dart';
import 'package:creamy_world/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 80,
                child: Text(
                  'Top Picks',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 27.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/cart.svg',
                color: Colors.white,
                width: 15,
                height: 22,
              ),
            ],
          ),
          //Search field
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                fillColor: const Color(0xffFBF9F9),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide:
                      const BorderSide(width: 0.5, color: Color(0xffEF5350)),
                ),
                hintText: 'Search for ice cream',
                hintStyle: const TextStyle(
                  fontSize: 18.0,
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
          const SizedBox(
            height: 20.0,
          ),
          //Items grid view
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  );
                  // return SizedBox();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
