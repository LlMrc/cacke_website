import 'package:cacke_website/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.accentsColor,
        border: Border(top: BorderSide(color: AppColor.secondaryColor)),
      ),
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.facebookF)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.instagram)),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.twitter)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.pinterest))
            ],
          ),
          const Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Home'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('About'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Contact'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
