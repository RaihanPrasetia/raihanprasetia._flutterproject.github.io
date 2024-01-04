import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/carousel3_controller.dart';

class Carousel3View extends GetView<Carousel3Controller> {
  const Carousel3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const urlImage = 'assets/andrey-bond-t8fEOfpVfck-unsplash.jpg';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.4),
        appBar: AppBar(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Container(
                alignment: Alignment.center,
                width: Get.width,
                height: 300,
                child: Column(
                  children: [
                    ListTile(
                      minVerticalPadding: 80,
                      title: Text(
                        'Plan Your Travel Budget',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        'Know total cos of your trip, where you spent the most and split the expenses among co-travellers',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => controller.onPreseedIconHome(),
                    icon: const Icon(Icons.circle_outlined),
                    iconSize: 12.0,
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
                    icon: const Icon(Icons.circle),
                    iconSize: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 140,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => controller.onPraseedButtonLogin(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => controller.onPraseedButtonRegister(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
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
