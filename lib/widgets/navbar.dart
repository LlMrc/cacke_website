import 'package:cacke_website/utils/responsiveness.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(desktopSize: deskTopNav(), mobileSize: mobileNav());
  }

  Widget mobileNav() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [const Icon(Icons.menu), navLogo()]),
    );
  }

  Widget deskTopNav() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        navLogo(),
        Row(children: [
          navButton('Feature'),
          navButton('About us'),
          navButton('Pricing'),
          navButton('FeedBack')
        ]),
        SizedBox(
          height: 45,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Request a demo'),
          ),
        )
      ]),
    );
  }

  Widget navLogo() {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            
            image: AssetImage('assets/images/logo.png'))),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(text,
          style: const TextStyle(color: Colors.black, fontSize: 18)),
    );
  }
}
