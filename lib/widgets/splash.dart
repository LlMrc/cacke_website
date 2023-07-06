import 'dart:ui';

import 'package:cacke_website/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashCreen extends StatelessWidget {
  const SplashCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
          blendMode: BlendMode.src,
          shaderCallback: (Rect bounds) {
            return LinearGradient(colors: [AppColor.accentsColor, AppColor.secondaryColor], begin: Alignment.centerLeft , end: Alignment.centerRight ).createShader(bounds);
          },
          child: const Text('MASHPA PASTRY CHEF')),
    );
  }
}
