import 'package:creamy_world/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:creamy_world/screens/details/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.light),
      child: Scaffold(
        backgroundColor: product.bg,
        appBar: buildAppBar(),
        body: Body(product: product),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: product.bg,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'images/back.svg',
          color: product.hue,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'images/cart.svg',
            color: product.hue,
            height: 25,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
