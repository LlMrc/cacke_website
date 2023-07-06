import 'package:cacke_website/widgets/footer.dart';
import 'package:cacke_website/widgets/testimonial.dart';
import 'package:flutter/material.dart';

import '../widgets/details_page.dart';
import '../widgets/header.dart';
import '../widgets/hero.dart';
import '../widgets/navbar.dart';

import '../widgets/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: const Column(children: [
            NavBar(),
            Header(),
          ]),
        ),
          const ProductPage(),
          const HeroPage(),
          const DetailsPage(),
          Container(
             color: const Color(0xffFFDEDE),
            child: const Testimonial()),
          const Footer()
        ],
      )),
    );
  }
}
