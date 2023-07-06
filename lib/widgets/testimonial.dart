import 'dart:ui';

import 'package:cacke_website/utils/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Testimonial extends StatefulWidget {
  const Testimonial({super.key});

  @override
  State<Testimonial> createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
  int activeIndex = 0;
  static const img = [
    'assets/images/testi1.jpg',
    'assets/images/testi2.jpg',
    'assets/images/testi3.jpg',
    'assets/images/testi.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        width: isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.7
            : MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'que dit nos clients!'.toUpperCase(),
                style: const TextStyle(fontSize: 24),
              ),
            ),
            CarouselSlider(
                items: [
                  testiminialCard(
                      'Suzanne Mattea',
"Les desserts de cette pâtisserie sont tout simplement divins ! Chaque bouchée est une explosion de saveurs et de textures. Je suis toujours émerveillé par la qualité et la fraîcheur des produits. Un vrai régal pour les papilles !",                      img[0]),
                  testiminialCard(
                      'Christina Vlastimila',
                      "Je recommande vivement cette pâtisserie à tous les amoureux du sucré. Leurs macarons sont tout simplement les meilleurs que j'ai jamais goûtés ! Croquants à l'extérieur, moelleux à l'intérieur, et les différentes saveurs sont toutes exquises. Une véritable tentation à laquelle il est impossible de résister !",
                      img[1]),
                  testiminialCard(
                      'Albertine Nora',
                      "Cette pâtisserie a rendu mon mariage inoubliable grâce à leur magnifique pièce montée. Non seulement c'était un véritable chef-d'œuvre visuel, mais les saveurs étaient tout simplement incroyables. Mes invités en parlent encore aujourd'hui ! Un grand merci à toute l'équipe pour leur travail exceptionnel",
                      img[3]),
                  testiminialCard(
                      'Jean-Marie Ralph',
                     "Cette pâtisserie a rendu mon mariage inoubliable grâce à leur magnifique pièce montée. Non seulement c'était un véritable chef-d'œuvre visuel, mais les saveurs étaient tout simplement incroyables. Mes invités en parlent encore aujourd'hui ! Un grand merci à toute l'équipe pour leur travail exceptionnel",
                      img[2])
                ],
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: isDesktop(context) ? 0.45 : 0.80,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                    height: 500)),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget testiminialCard(String name, description, assets) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),

        margin: const EdgeInsets.only(top: 50, bottom: 20),
        width: 400,
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                 gradient: const LinearGradient(colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 248, 245, 245)]),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 25,
                          spreadRadius: -5
                        )],
                        border: Border.all(width: 2, color: Colors.white30)),
                    child: ListView(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              height: 2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(description,
                            style: const TextStyle(fontSize: 18),
                            maxLines: 12,
                            overflow: TextOverflow.fade),
                      )
                    ]),
                  ),
                )),
            Positioned(
                top: -30,
                child: CircleAvatar(
                  backgroundColor: AppColor.accentsColor,
                  radius: 50,
                  backgroundImage: AssetImage(assets),
                )),
          ],
        ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: WormEffect(
          activeDotColor: AppColor.secondaryColor,
          dotColor: AppColor.accentsColor),
      activeIndex: activeIndex,
      count: 4);
}
