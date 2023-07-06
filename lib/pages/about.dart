import 'package:cacke_website/widgets/footer.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const NavBar(),
          Container(
            width: 600,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text('A propos de nous'.toUpperCase(),   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, height: 2)),
                textWidget(
                    "Nous sommes une pâtisserie passionnée par l'art de créer des délices sucrés. Depuis notre création, nous nous efforçons de vous offrir une expérience gustative inoubliable, en mettant l'accent sur la qualité, la fraîcheur et l'attention aux détails"),
                textWidget(
                    "Notre équipe de talentueux pâtissiers artisans met tout son savoir-faire et sa créativité pour donner vie à des desserts exceptionnels. Chaque gâteau, chaque tarte et chaque biscuit est préparé avec soin, en utilisant des ingrédients de première qualité et en respectant les méthodes traditionnelles de la pâtisserie."),
                textWidget(
                    "Nous croyons que chaque bouchée devrait être une expérience sensorielle, où les saveurs s'harmonisent délicieusement, où les textures se mêlent avec élégance et où les présentations éblouissent les yeux. C'est pourquoi nous mettons un point d'honneur à rechercher constamment l'excellence dans tout ce que nous créons."),
                textWidget(
                    "En tant que pâtisserie engagée, nous nous efforçons de répondre aux attentes et aux préférences de nos clients. Nous sommes à l'écoute de vos besoins, prêts à personnaliser vos commandes et à créer des desserts sur mesure pour vos occasions spéciales."),
                textWidget(
                    "La satisfaction de nos clients est notre priorité absolue. Nous nous engageons à offrir un service chaleureux, amical et professionnel à chaque visite ou commande en ligne. Nous voulons que chaque interaction avec notre pâtisserie soit agréable et que vous vous sentiez bien accueilli et pris en charge à chaque étape."),
                textWidget(
                    "La satisfaction de nos clients est notre priorité absolue. Nous nous engageons à offrir un service chaleureux, amical et professionnel à chaque visite ou commande en ligne. Nous voulons que chaque interaction avec notre pâtisserie soit agréable et que vous vous sentiez bien accueilli et pris en charge à chaque étape."),
                textWidget(
                    "La satisfaction de nos clients est notre priorité absolue. Nous nous engageons à offrir un service chaleureux, amical et professionnel à chaque visite ou commande en ligne. Nous voulons que chaque interaction avec notre pâtisserie soit agréable et que vous vous sentiez bien accueilli et pris en charge à chaque étape."),
              ],
            ),
          ),
          const Footer()
        ],
      )),
    );
  }

  Widget textWidget(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
