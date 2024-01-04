// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ProfileController controller = Get.put(ProfileController());
  final List<String> imageAssets = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/prambanan 2.jpg',
    'assets/3.jpg',

    // Add more image asset paths as needed
  ];

  int currentIndex = 0;
  List<Widget> get _views => [
        Container(
          color: const Color(0xfff0f0d6),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 193, 129),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.PANTAIKUTA),
                  trailing: const Icon(
                    FontAwesomeIcons.solidHeart,
                    size: 24,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Pantai Kuta',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/Kuta_2.jpg'),
                    radius: 30,
                  ),
                  subtitle: const Text(
                    'Bali',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 230, 137),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.GUNUNG_BROMO),
                  trailing: const Icon(
                    FontAwesomeIcons.solidHeart,
                    size: 24,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Gunung Bromo',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/Bromo.webp'),
                    radius: 30,
                  ),
                  subtitle: const Text(
                    'Jawa Timur',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 115, 181, 133),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.RAJA_AMPAT),
                  trailing: const Icon(
                    FontAwesomeIcons.solidHeart,
                    size: 24,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Raja Ampat',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/Raja Ampat2.jpg'),
                    radius: 30,
                  ),
                  subtitle: const Text(
                    'Papua',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 370,
          color: const Color(0xfff0f0d6),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: imageAssets.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imageAssets[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Container(
          color: const Color(0xfff0f0d6),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 193, 129),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(
                    FontAwesomeIcons.userEdit,
                    size: 26,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 230, 137),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.CREATOR),
                  title: const Text(
                    'Who We Are',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(
                    Icons.question_mark,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 115, 181, 133),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.ABOUT),
                  title: const Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(
                    FontAwesomeIcons.infoCircle,
                    size: 26,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 202, 90, 84),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  onTap: () => Get.offAllNamed(Routes.CAROUSEL3),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];

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
              onPressed: () => controller.OnPressedButtonBookmark(),
              icon: const Icon(
                Icons.list_alt_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.blueAccent,
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
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/mafia.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 140),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(
                      image: AssetImage(
                        'assets/Vincenzo_poster.jpg',
                      ),
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Vincenzo Cassano',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.all(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Washington DC',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const SizedBox(
                height: 40,
                width: 250,
                child: Text(
                  '"Life is either a daring adventure."\n -Helen Keller',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuText('Favorites', 0),
                  buildMenuText('Galery', 1),
                  buildMenuText('Setting', 2),
                ],
              ),
            ),
            SingleChildScrollView(
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling here
              child: Container(
                child: _views[currentIndex],
              ),
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
