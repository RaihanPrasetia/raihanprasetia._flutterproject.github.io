// ignore_for_file: unused_import, sized_box_for_whitespace

import 'dart:math';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/pantaikuta/views/pantaikuta_view.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import '../controllers/branda_controller.dart';

class BrandaView extends StatefulWidget {
  const BrandaView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BrandaViewState createState() => _BrandaViewState();
}

class _BrandaViewState extends State<BrandaView> {
  // carousel
  late Timer _timer;
  List<String> carouselImgUrls = [
    // Step 3: Remove 'final' to modify the list later
    'assets/Branda1.jpg',
    'assets/Branda2.jpg',
    'assets/Branda3.jpg',
  ];
  int currentCarouselIndex = 0;

  @override
  void initState() {
    super.initState();
    _startImageCarousel();
  }

  void _startImageCarousel() {
    const carouselDuration = Duration(seconds: 5);
    _timer = Timer.periodic(carouselDuration, (Timer timer) {
      setState(() {
        currentCarouselIndex =
            (currentCarouselIndex + 1) % carouselImgUrls.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _shuffleCarouselImages(); // Shuffle the images when the widget builds initially
  }

  void _shuffleCarouselImages() {
    final random = Random();
    for (int i = carouselImgUrls.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      String temp = carouselImgUrls[i];
      carouselImgUrls[i] = carouselImgUrls[j];
      carouselImgUrls[j] = temp;
    }
  }
// carousel

  final List<String> imgUrL = [
    // foto Pantai Kuta [0]
    'assets/Kuta_2.jpg',
    // foto Raja Ampat [1]
    'assets/Raja Ampat.webp',
    // foto Gunung Borom
    'assets/Bromo.webp',
    // foto candi Borobudur
    'assets/Candi Borobudur.webp',
    // foto candi prambanan
    'assets/Candi Prambanan.jpg',
    // foto Ubud
    'assets/Ubud.webp',
    // foto pantai natsepa ambon
    'assets/natsepa.jpg',
    // foto kampoeng kartsa
    'assets/Kampoeng kartsa.webp',
  ];
  int currentIndex = 0;
  List<Widget> get _views => [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: 200,
          color: const Color(0xfff0f0d6),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: <Widget>[
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      // ignore: prefer_const_constructors
                      onTap: () => Get.toNamed(Routes.PANTAIKUTA),
                      child: Image.asset(
                        imgUrL[0],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Pantai Kuta',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.RAJA_AMPAT),
                      child: Image.asset(
                        imgUrL[1],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Raja Ampat',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.GUNUNG_BROMO),
                      child: Image.asset(
                        imgUrL[2],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Gunung Bromo',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.BOROBUDUR),
                      child: Image.asset(
                        imgUrL[3],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Candi Borobudur',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.PRAMBANAN),
                      child: Image.asset(
                        imgUrL[4],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Candi Prambanan',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.UBUD),
                      child: Image.asset(
                        imgUrL[5],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Air Terjun Ubud',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.NATSEPA),
                      child: Image.asset(
                        imgUrL[6],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Pantai Natsepa',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.KAMPOENGKARTSA),
                      child: Image.asset(
                        imgUrL[7],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Kampoeng Karst',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.only(left: 10),
          color: const Color(0xfff0f0d6),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: <Widget>[
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.KAMPOENGKARTSA),
                      child: Image.asset(
                        imgUrL[7],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Kampoeng Karst',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.GUNUNG_BROMO),
                      child: Image.asset(
                        imgUrL[2],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Gunung Bromo',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.BOROBUDUR),
                      child: Image.asset(
                        imgUrL[3],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Candi Borobudur',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.UBUD),
                      child: Image.asset(
                        imgUrL[5],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Air Terjun Ubud',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.only(left: 10),
          color: const Color(0xfff0f0d6),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            children: <Widget>[
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      // ignore: prefer_const_constructors
                      onTap: () => Get.toNamed(Routes.PANTAIKUTA),
                      child: Image.asset(
                        imgUrL[0],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Pantai Kuta',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.BOROBUDUR),
                      child: Image.asset(
                        imgUrL[3],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Candi Borobudur',
                    style: GoogleFonts.laila(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ];

  List<String> get imgUrl => imgUrL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.blueAccent,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => Get.offAllNamed(Routes.TRIPS),
              icon: const Icon(
                Icons.place_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => Get.offAllNamed(Routes.BOOKMARK),
              icon: const Icon(
                Icons.list_alt,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => Get.offAllNamed(Routes.PROFILE),
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff0f0d6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 29,
                right: 29,
              ),
              width: 360,
              height: 150,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'DISCOVER',
                      style: GoogleFonts.dangrek(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text(
                      'INTERESTING PLACES',
                      style: GoogleFonts.dangrek(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 380,
              padding: const EdgeInsets.only(
                  left: 29, right: 29, bottom: 10, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for location...',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: const Icon(
                    FontAwesomeIcons.searchLocation,
                    color: Colors.black,
                    size: 18,
                  ),
                  suffixIcon: const Icon(
                    Icons.settings_suggest_outlined,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: const Color(0xffd8d8d8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,

                    // Menghilangkan garis tepi
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
                onChanged: (value) {
                  // Aksi yang akan dijalankan ketika isi dari TextField berubah.
                  // Anda dapat menambahkan logika pencarian di sini.
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 29, right: 29),
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  carouselImgUrls[currentCarouselIndex],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuText('All', 0),
                  buildMenuText('Populer', 1),
                  buildMenuText('Recomended', 2),
                ],
              ),
            ),
            Container(
              child: _views[currentIndex],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildMenuText(String title, int index) {
    bool isSelected = index == currentIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.black : Colors.transparent,
              width: 2.0, // Change the width of the underline as needed
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 8.0), // Adjust padding as needed
        child: Text(
          title,
          style: TextStyle(
            color: isSelected
                ? Colors.black
                : Colors.black, // Change color as needed
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
