import 'package:flutter/material.dart';

class AppColor{
 static Color mainColor = const Color(0xffF6F6F6);
 static Color primaryColor = const Color(0xffFFBB91);
  static Color secondaryColor = const Color(0xffFF8E6E);
   static Color accentsColor = const Color(0xff8AAE92);
}



  bool isSmallCreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;


  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 600;