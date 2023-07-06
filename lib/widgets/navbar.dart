import 'package:cacke_website/utils/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          OnHover(
              child: navButton(
                  'Feature', () => GoRouter.of(context).go('/featured'))),
          OnHover(child: navButton('About us', () => GoRouter.of(context).go('/about'))),
          OnHover(child: navButton('Pricing', () => GoRouter.of(context).go('/pricing'))),
          OnHover(child: navButton('Contact', () => GoRouter.of(context).go('/contact')))
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
    return GestureDetector(
      onTap: () => GoRouter.of(context).go('/'),
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo.png'))),
      ),
    );
  }

  Widget navButton(String text, VoidCallback callBack) {
    return GestureDetector(
      onTap: () {
        callBack();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(text,
            style: const TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }
}

class OnHover extends StatefulWidget {
  final Widget child;
  const OnHover({super.key, required this.child});

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, -8, 0);
  final transform = isHovered? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: transform,
            child: widget.child));
  }

  void onEntered(bool isHover) => setState(() {
        isHovered = isHover;
      });
}
