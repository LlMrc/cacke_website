import 'dart:ui';

import 'package:flutter/material.dart';


import 'hover_card.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  bool onHover = true;
  static const greyScaleMatrix = [
    0.2126,
    0.7152,
    0.0722,
    0.0,
    0.0,
    0.2126,
    0.7152,
    0.0722,
    0.0,
    0.0,
    0.2126,
    0.7152,
    0.0722,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
    0.0
  ];
  static const noFilter = [
    1.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
    0.0,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: const EdgeInsets.only(top: 40),
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              'Succombez à la douceur, laissez nos pâtisseries éveiller vos papilles '
                  .toUpperCase(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40,
                height: 1.3,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              MouseRegion(
                onEnter: (event) => setState(() => onHover = true),
                onExit: (event) => setState(() => onHover = false),
                child: AnimatedContainer(
                  
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeIn,
                  child: ColorFiltered(
                    colorFilter: onHover?  const ColorFilter.matrix(greyScaleMatrix) :const ColorFilter.matrix(noFilter) ,
                    child: Image.network(
                      'https://images.pexels.com/photos/4262420/pexels-photo-4262420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      height: 400,
                      width: 600,
                    ),
                  ),
                ),
              ),
               Positioned(width: 300,
               child: Visibility(
                visible: onHover,
                child: const HoverCard())),
            ],
          ),
        ],
      ),
    );
  }

  Widget titleSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      alignment: Alignment.center,
      child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Nous vous invitons à découvrir un univers gourmand où la passion pour la pâtisserie.',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          )),
    );
  }
}
