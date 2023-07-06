import 'package:flutter/material.dart';

import '../utils/constant.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Column(
      children: [
         SizedBox(height: isDesktop(context) ? 120: 8),
        const SizedBox(
          width: 600,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                indent: 20,
                endIndent: 20,
              )),
              Text("SPECIAL OFFERT"),
              Expanded(child: Divider(indent: 20, endIndent: 20)),
            ],
          ),
        ),
        Container(
          width: isDesktop(context) ? size * 0.65 : size,
          margin: const EdgeInsets.symmetric(vertical: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ]),
          child: const Wrap(
            alignment: WrapAlignment.spaceAround,
            runAlignment: WrapAlignment.center,
            children: [
              Proposal(
                  title: "ouverture",
                  subtitle: 'horaires de travail',
                  description:
                      "Du lundi au vendredi, la pâtisserie peut ouvrir généralement de 8h00 à 18h00, Ces horaires peuvent varier en fonction de la clientèle locale et des habitudes de consommation"),
              Proposal(
                  title: 'dessert',
                  subtitle: 'moelleux et savoureux',
                  description:
                      'nous offrons une grande variété de desserts délicieux tels que des gâteaux au chocolat, des gâteaux aux fruits, des gâteaux à la crème ou des gâteaux à étages élaborés pour les occasions spéciales.'),
              Proposal(
                  title: 'Prolongation',
                  subtitle: 'Soirées spéciales',
                  description:
                      "Pour des occasions spéciales les horaires de travail peuvent être étendus pour répondre à la demande accrue des clients"),
            ],
          ),
        ),
      ],
    );
  }
}

class Proposal extends StatelessWidget {
  const Proposal({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Container(
      width: isDesktop(context) ? 250 : size,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: AppColor.accentsColor),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              subtitle,
              style: const TextStyle(fontSize: 18, fontFamily: 'DacingScript'),
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
