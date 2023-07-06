import 'package:cacke_website/pages/about.dart';
import 'package:cacke_website/pages/contact.dart';
import 'package:cacke_website/pages/featured.dart';
import 'package:cacke_website/pages/home_page.dart';
import 'package:cacke_website/pages/pricing.dart';
import 'package:cacke_website/utils/constant.dart';
import 'package:cacke_website/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/featured', builder: (context, state) => const Featured()),
      GoRoute(path: '/about', builder: (context, state) => const About()),
      GoRoute(path: '/pricing', builder: (context, state) => const Pricing()),
      GoRoute(path: '/contact', builder: (context, state) => const Contact()),
    ]);
    return MaterialApp.router(
      title: 'Cake Store wedsite',
      routerConfig: router,
      theme: ThemeData(
          fontFamily: 'varelaRound',
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColor.mainColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
            backgroundColor: AppColor.accentsColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ))),
       
    );
  }
}
