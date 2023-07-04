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
   
      body: SingleChildScrollView(child: Column(
        children: const [
          NavBar(),
          Header(),
          ProductPage(),
          HeroPage(),
       
          DetailsPage()
        ],
      )),
    );
  }
}
