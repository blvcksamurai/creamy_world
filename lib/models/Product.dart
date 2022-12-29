// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String image, title, description, details;
  final int size, id;
  final double price, rating;
  final Color color, home, hue, bg, gradient, gradien;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.description,
    required this.details,
    required this.size,
    required this.color,
    required this.home,
    required this.hue,
    required this.bg,
    required this.gradient,
    required this.gradien,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Choco Stick",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/3.png",
    color: const Color(0xffBA8549),
    home: const Color(0xffa67450),
    hue: const Color(0xffba8549),
    bg: const Color(0xffbe9f98),
    gradient: const Color(0xfff4ebe1),
    gradien: const Color(0xfff4ebe1),
  ),
  Product(
    id: 2,
    title: "Strawberry scoops",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/2.png",
    color: const Color(0xffDE8484),
    home: const Color(0xfffdc4c2),
    hue: const Color(0xffee6485),
    bg: const Color(0xfff3dae0),
    gradient: const Color(0xfffefbfc),
    gradien: const Color(0xfff3d5dc),
  ),
  Product(
    id: 3,
    title: "Choco Scoop",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/1.png",
    color: const Color(0xff352F12),
    home: const Color(0xffa67450),
    hue: const Color(0xffba8549),
    bg: const Color(0xffbe9f98),
    gradient: const Color(0xfff4ebe1),
    gradien: const Color(0xfff4ebe1),
  ),
  Product(
    id: 4,
    title: "Strawberry Scoop",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/4.png",
    color: const Color(0xffE2BABA),
    home: const Color(0xfffdc4c2),
    hue: const Color(0xffee6485),
    bg: const Color(0xffF3DAE0),
    gradient: const Color(0xfffefbfc),
    gradien: const Color(0xfff3d5dc),
  ),
  Product(
    id: 5,
    title: "Vanilla Scoop",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/5.png",
    color: const Color(0xffBCAE85),
    home: const Color(0xfffdc4c2),
    hue: const Color(0xffba8549),
    bg: const Color(0xffFDFBF1),
    gradient: const Color(0xfff4ebe1),
    gradien: const Color(0xfff4ebe1),
  ),
  Product(
    id: 6,
    title: "Fruity Scoops",
    price: 10.99,
    rating: 4.9,
    size: 11,
    description: "ipsum dolor sit amet, consectetur",
    details:
        "Special  combination of vanilla scoop and strawberry flavour with premiuim fruits Special  combination of vanilla scoop and strawberry flavour with premiuim fruits  Special  combination of vanilla scoop and strawberry flavour with premiuim fruits ",
    image: "images/6.png",
    color: const Color(0xffA69F0D),
    home: const Color(0xfffdc4c2),
    hue: const Color(0xffba8549),
    bg: const Color(0xfffdfbf1),
    gradient: const Color(0xfffcc4ba),
    gradien: const Color(0xfff3edcc),
  ),
];
