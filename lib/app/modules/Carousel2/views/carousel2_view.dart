import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/carousel2_controller.dart';

class Carousel2View extends GetView<Carousel2Controller> {
  const Carousel2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const urlImage = 'assets/Carousel2.webp';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(urlImage), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
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
              const Padding(padding: EdgeInsets.all(0.0)),
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      minVerticalPadding: 150,
                      title: Text(
                        'Pin all Places On Ur Map',
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
                          'Save your favorite spots on each location, Create your bucket list and share your map with friends.',
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
                    onPressed: () => controller.onPreseedIconHome(),
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
                  IconButton(
                    onPressed: () => controller.onPraseedIconCaroulsel3(),
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
