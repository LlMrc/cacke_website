import 'package:flutter/material.dart';

const largeScreen = 1366;
const mediumScreen = 768;
const smallScreen = 360;

class ResponsiveScreen extends StatelessWidget {
  final Widget desktopSize;
  final Widget? tabletteSize;
  final Widget? mobileSize;

  const ResponsiveScreen(
      {super.key,
      required this.desktopSize,
      this.mobileSize,
      this.tabletteSize});

  static bool isSmallScreen(context) =>
      MediaQuery.of(context).size.width < smallScreen;

  static bool isMediumScreen(context) =>
      MediaQuery.of(context).size.width >= smallScreen &&
      MediaQuery.of(context).size.width < largeScreen;

  static bool isLargeScreen( context) =>
      MediaQuery.of(context).size.width >= largeScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreen) {
          return desktopSize;
        } else if (width < largeScreen && width >= mediumScreen) {
          return tabletteSize ?? desktopSize;
        } else {
          return mobileSize ?? desktopSize;
        }
      },
    );
  }
}
