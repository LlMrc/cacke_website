import 'dart:ui';

import 'package:cacke_website/utils/constant.dart';
import 'package:cacke_website/widgets/footer.dart';
import 'package:cacke_website/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/4173174/pexels-photo-4173174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                const NavBar(),
                const Text(
                  'veillez nous contactez',
                  style: TextStyle(height: 2, fontSize: 14),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 460,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/7794362/pexels-photo-7794362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                              opacity: 0.1),
                          gradient: const LinearGradient(
                              colors: [Colors.white10, Colors.white60]),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 25,
                                spreadRadius: -5)
                          ],
                          border: Border.all(width: 2, color: Colors.white30)),
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              child:  TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.secondaryColor,
                                        width: 2.0),
                                  ),
                                  border: const OutlineInputBorder(),
                                  hintText: "Username",
                                  labelText: "email",
                              
                                ),
                              )),
                          Container(
                              padding: const EdgeInsets.all(16),
                              child: TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.secondaryColor,
                                        width: 2.0),
                                  ),
                                  border: const OutlineInputBorder(),
                                  hintText: "Username",
                                  labelText: "cc",
                                ),
                              )),
                          Container(
                              padding: const EdgeInsets.all(16),
                              child:  TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 8,
                                maxLength: 100,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.secondaryColor,
                                        width: 2.0),
                                  ),
                                  border: const OutlineInputBorder(),
                                  hintText: "Username",
                                  labelText: "message",
                                ),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 8),
                                child: Text(
                                  'Send'.toUpperCase(),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Footer()
        ],
      )),
    );
  }
}
