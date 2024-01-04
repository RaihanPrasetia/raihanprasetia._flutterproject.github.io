// ignore_for_file: unused_import

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/bookmark_controller.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0d6),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        width: Get.width,
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => controller.OnPressedButtonHome(),
              icon: const Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => controller.OnPressedButtontrips(),
              icon: const Icon(
                Icons.place_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_alt,
                color: Colors.blueAccent,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () => controller.OnPressedButtonProfil(),
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0d6),
        title: const Text('List Trip'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 153, 228, 138),
                borderRadius: BorderRadius.circular(18),
              ),
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ListTile(
                onTap: () => Get.toNamed(Routes.UBUD),
                trailing: const Icon(
                  FontAwesomeIcons.trash,
                  size: 20,
                  color: Colors.black,
                ),
                title: const Text(
                  'Healing',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Ubud.webp'),
                  radius: 30,
                ),
                subtitle: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.place_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text('Air Terjun Ubud')
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text(
                          '11 Maret 2030',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 156, 225),
                borderRadius: BorderRadius.circular(18),
              ),
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ListTile(
                onTap: () => Get.toNamed(Routes.GUNUNG_BROMO),
                trailing: const Icon(
                  FontAwesomeIcons.trash,
                  size: 20,
                  color: Colors.black,
                ),
                title: const Text(
                  'Holiday',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Candi Prambanan.jpg'),
                  radius: 30,
                ),
                subtitle: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.place_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text('Candi Prambanan')
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text(
                          '15 Mei 2035',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 199, 98),
                borderRadius: BorderRadius.circular(18),
              ),
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ListTile(
                onTap: () => Get.toNamed(Routes.KAMPOENGKARTSA),
                trailing: const Icon(
                  FontAwesomeIcons.trash,
                  size: 20,
                  color: Colors.black,
                ),
                title: const Text(
                  'Honey Moon',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Kampoeng kartsa.webp'),
                  radius: 30,
                ),
                subtitle: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.place_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text('Kampoeng Karst')
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 4)),
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          size: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          child: Padding(padding: EdgeInsets.all(3)),
                        ),
                        Text(
                          '32 Desember 2040',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
