import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import '../controllers/trips_controller.dart';

class TripsView extends GetView<TripsController> {
  const TripsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0d6),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0d6),
        title: const Text('Create a new trip'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        width: Get.width,
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Get.offAllNamed(Routes.BRANDA),
              icon: const Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.place_rounded,
                color: Colors.blueAccent,
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
                width: Get.width,
                height: 80,
                padding: const EdgeInsets.only(left: 40),
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.airplane_ticket,
                      color: Colors.black,
                      size: 28,
                    ),
                    SizedBox(width: 28),
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          hintText: 'Trip Name...',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
                width: Get.width,
                height: 80,
                padding: const EdgeInsets.only(left: 40),
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.place_outlined,
                      color: Colors.black,
                      size: 28,
                    ),
                    SizedBox(width: 28),
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          hintText: 'Which location will you visit',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
                width: Get.width,
                height: 80,
                padding: const EdgeInsets.only(left: 40),
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: 28,
                    ),
                    SizedBox(width: 28),
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // White underline color
                          ),
                          hintText: 'Date Range',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 28),
                child: SizedBox(
                  width: 300,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                    child: const Text(
                      'Create trip',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
