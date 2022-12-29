import 'package:creamy_world/models/Product.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final Product product;
  const Counter({Key? key, required this.product}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 8, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    numOfItems++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                numOfItems.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (numOfItems > 1) {
                    setState(() {
                      numOfItems--;
                    });
                  }
                },
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
