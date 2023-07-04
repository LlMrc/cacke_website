import 'package:cacke_website/pages/home_page.dart';
import 'package:cacke_website/utils/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cake Store wedsite',
      theme: ThemeData(
          fontFamily: 'varelaRound',
          brightness: Brightness.light,
          primaryColor: AppColor.mainColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
            backgroundColor: AppColor.accentsColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ))),
      home: const HomePage(),
    );
  }
}
