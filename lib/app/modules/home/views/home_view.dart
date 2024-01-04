// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlImage = 'assets/Homebg.jfif';

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        appBar: AppBar(
          titleTextStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ImageIcon(
                AssetImage('assets/logo TTTID.png'),
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text('WONDERIND')
            ],
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(padding: EdgeInsets.all(0.0)),
              SizedBox(
                width: 400,
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      minVerticalPadding: 150,
                      title: Text(
                        'Create Your Perfect Trip',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          'Add destinations set your nights,and find places to sleep, things to do and transportation for each destination.',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.circle),
                    iconSize: 20.0,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () => controller.onPraseedIconCaroulsel2(),
                    icon: const Icon(Icons.circle_outlined),
                    iconSize: 12.0,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.circle_outlined),
                    iconSize: 12.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
