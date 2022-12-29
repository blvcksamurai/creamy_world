import 'package:creamy_world/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function()? press;
  const ItemCard({
    Key? key,
    required this.press,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: product.color),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Expanded(
                      child: Image.asset(
                        product.image,
                        height: 130,
                        width: 150,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
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
                            product.description,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11.0,
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
        ],
      ),
    );
  }
}
