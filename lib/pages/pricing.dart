import 'package:cacke_website/utils/constant.dart';
import 'package:cacke_website/widgets/footer.dart';
import 'package:cacke_website/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  const Pricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        const NavBar(),
        const SizedBox(
          width: 600,
          child: Text("Découvrez des délices sucrés à des prix qui feront sourire votre palais et votre portefeuille 🤤!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, height: 2), textAlign: TextAlign.center,),
        ),
        Container(
          width: isDesktop(context)
              ? MediaQuery.of(context).size.width * 0.6
              : MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          height: MediaQuery.of(context).size.height,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isDesktop(context) ? 4 : 2),
            children: [
              cakeCard('Tarte', 3.55, 'assets/images/cake/cake.jpg'),
              cakeCard('Gateau au chocolat', 16.55, 'assets/images/cake/cake1.png'),
              cakeCard('Gateau', 23.99, 'assets/images/cake/cake2.jpeg'),
              cakeCard('cookies', 10.07, 'assets/images/cake/cake3.jpeg'),
              cakeCard('Croissant', 13.99, 'assets/images/cake/cake4.jpeg'),
              cakeCard('Gateau', 8.99, 'assets/images/cake/cake5.jpeg'),
              cakeCard('Tarte au citron', 3.05, 'assets/images/cake/cake6.jpeg'),
              cakeCard('Gateau', 8.75, 'assets/images/cake/cake8.jpeg'),
            ],
          ),
        ),
        const Footer()
      ],
    )));
  }

  Widget cakeCard( String title, double price, String asset) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image:  DecorationImage(
                    image: AssetImage(asset),
                    fit: BoxFit.cover),
                color: AppColor.mainColor),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(),
              textAlign: TextAlign.start,
            ),
          ),
           Container(
             padding: const EdgeInsets.symmetric(vertical: 6 , horizontal: 12),
             margin: const EdgeInsets.all(8),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(14),
               color: AppColor.secondaryColor,
               
             ),
             child: Text('$price us',     textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}
