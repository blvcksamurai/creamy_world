import 'package:creamy_world/models/Product.dart';
import 'package:creamy_world/screens/details/components/counter.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  // const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      Expanded(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        product.gradien,
                        product.gradient,
                        //Color(0xff002A5C),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: const [0.25, 0.90]),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Expanded(
                  child: Column(children: [
                    Stack(children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 230,
                        width: 350,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: product.hue.withOpacity(0.15),
                            spreadRadius: 10,
                            blurRadius: 15,
                            offset: const Offset(
                                0, 5), // changes position of shadow
                          ),
                        ], borderRadius: BorderRadius.circular(150)),
                      ),
                      Image.asset(
                        product.image,
                        width: 300,
                        fit: BoxFit.contain,
                        height: 250,
                      ),
                    ]),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                      child: Stack(
                        children: [
                          Container(
                            width: 140,
                            height: 55,
                            decoration: BoxDecoration(
                              color: product.hue,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: product.hue.withOpacity(0.4),
                                  spreadRadius: 4,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Counter(product: product)
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 10,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 350, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            color: product.hue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "\$${product.price}",
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            color: Color(0xffa9a0a2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.details,
                      style: const TextStyle(
                        height: 1.8,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4b4545),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 25,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Ratings',
                              style: TextStyle(
                                  color: Color(0xff635b58),
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: product.hue,
                                ),
                                Text(
                                  "${product.rating}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: product.hue,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Delivery Time',
                              style: TextStyle(
                                  color: Color(0xff635b58),
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10-15 mins",
                              style: TextStyle(
                                fontSize: 17,
                                color: product.hue,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: product.hue, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.star_border_outlined,
                            size: 27,
                            color: product.hue,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: product.hue,
                            boxShadow: [
                              BoxShadow(
                                color: product.hue.withOpacity(0.4),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 5), // changes position of shadow
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 30,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
