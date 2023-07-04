import 'package:flutter/material.dart';

import '../utils/constant.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            
            'Succombez à la douceur, laissez nos pâtisseries éveiller vos papilles ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          Stack(
             alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
            
              Image.network(
                'https://images.pexels.com/photos/4262420/pexels-photo-4262420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                height: 400,
                width: 600,
              ),
                 Positioned(
                   width: 300,
               
                child:  Container(
                  color: AppColor.mainColor.withOpacity(0.5),
                  child: Text(
                    
                    'Laissez-vous séduire par nos créations sucrées, une tentation irrésistible pour les amateurs de gourmandises.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: AppColor.secondaryColor, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
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
