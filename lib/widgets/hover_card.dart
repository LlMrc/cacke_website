

import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/constant.dart';

class HoverCard extends StatelessWidget {
  const HoverCard({super.key});

   

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: 350,
          height: 200,
          padding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white10, Colors.white60]),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2, color: Colors.white30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 25,
                    spreadRadius: -5)
              ]),
          child: Text(
            'Laissez-vous séduire par nos créations sucrées, une tentation irrésistible pour les amateurs de gourmandises.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: AppColor.secondaryColor,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
