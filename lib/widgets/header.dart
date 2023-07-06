import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
     
      width: isSmallCreen(context)
          ? widht
          : widht * 0.70,
      child: Wrap(
        spacing: 8,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: [titleSection(context), previewedSection()],
      ),
    );
  }

  Widget titleSection(BuildContext context) {
    return Container(
      height: 500,
      width: isDesktop(context) ? 500 : 700,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'welcome to mash'.toUpperCase(),
                style: TextStyle(
                    color: Colors.transparent, // Step 2 SEE HERE
                    shadows: const [
                      Shadow(offset: Offset(0, -20), color: Colors.black)
                    ],
                    decoration: TextDecoration.underline,
                    decorationThickness: 3,
                    decorationColor: AppColor.accentsColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText('Plongez dans un monde délicieux où les saveurs exquises et les créations sucrées prennent vie. Nous vous invitons à découvrir un univers gourmand où la passion pour la pâtisserie est célébrée à chaque bouchée.',
              
                textStyle:  const TextStyle(
                    fontFamily: 'DacingScript',
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
)
              ],
           
            )
          ],
        ),
      ),
    );
  }

  Widget previewedSection() {
    return Container(
      height: 450,
      width: 430,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/chef.png'))),
    );
  }
}
