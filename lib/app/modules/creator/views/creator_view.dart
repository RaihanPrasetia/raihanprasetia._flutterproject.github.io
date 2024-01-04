import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/creator_controller.dart';

class CreatorView extends GetView<CreatorController> {
  const CreatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0d6),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0d6),
        title: const Text(
          'Wonderind Team',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left, // Replace with the desired icon
            color: Colors.black, // Set the color of the icon to brown
            size: 35, // Set the size of the icon as needed
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(215, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color:
                          Color.fromARGB(177, 0, 0, 0), // Set the shadow color
                      offset: Offset(0, 5), // Set the offset for the shadow
                      blurRadius: 4.0, // Set the blur radius for the shadow
                      spreadRadius: 0.0, // Set the spread radius for the shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(7),
                width: Get.width,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, bottom: 10, top: 10, right: 5),
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/Raihan.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Text(
                              'Nama : Raihan Prasetia\nNim    : 8020210022\nClass  : 07PT6',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 58)),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(174, 198, 195,
                                        194), // Set the shadow color
                                    offset: Offset(
                                        0, 5), // Set the offset for the shadow
                                    blurRadius:
                                        4.0, // Set the blur radius for the shadow
                                    spreadRadius:
                                        0.0, // Set the spread radius for the shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors
                                      .white, // Set the color of the border
                                  width: 1.0, // Set the width of the border
                                ),
                                color: const Color.fromARGB(174, 234, 231, 229),
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              child: const Text(
                                'Full Stack Dev',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(215, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color:
                          Color.fromARGB(177, 0, 0, 0), // Set the shadow color
                      offset: Offset(0, 5), // Set the offset for the shadow
                      blurRadius: 4.0, // Set the blur radius for the shadow
                      spreadRadius: 0.0, // Set the spread radius for the shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(7),
                width: Get.width,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, bottom: 10, top: 10, right: 5),
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/Herdinata Dwi Putra.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Text(
                              'Nama : Herdinata Dwi P\nNim    : 8020210144\nClass  : 07PT6',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 58)),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(174, 198, 195,
                                        194), // Set the shadow color
                                    offset: Offset(
                                        0, 5), // Set the offset for the shadow
                                    blurRadius:
                                        4.0, // Set the blur radius for the shadow
                                    spreadRadius:
                                        0.0, // Set the spread radius for the shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors
                                      .white, // Set the color of the border
                                  width: 1.0, // Set the width of the border
                                ),
                                color: const Color.fromARGB(174, 234, 231, 229),
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              child: const Text(
                                'UI/UX Design',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(215, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color:
                          Color.fromARGB(177, 0, 0, 0), // Set the shadow color
                      offset: Offset(0, 5), // Set the offset for the shadow
                      blurRadius: 4.0, // Set the blur radius for the shadow
                      spreadRadius: 0.0, // Set the spread radius for the shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(7),
                width: Get.width,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, bottom: 10, top: 10, right: 5),
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/Habi.JPG',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Text(
                              'Nama : M Habi\nNim    : 8020210101\nClass  : 07PT6',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 58)),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(174, 198, 195,
                                        194), // Set the shadow color
                                    offset: Offset(
                                        0, 5), // Set the offset for the shadow
                                    blurRadius:
                                        4.0, // Set the blur radius for the shadow
                                    spreadRadius:
                                        0.0, // Set the spread radius for the shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors
                                      .white, // Set the color of the border
                                  width: 1.0, // Set the width of the border
                                ),
                                color: const Color.fromARGB(174, 234, 231, 229),
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              child: const Text(
                                'Frontend Dev',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(215, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color:
                          Color.fromARGB(177, 0, 0, 0), // Set the shadow color
                      offset: Offset(0, 5), // Set the offset for the shadow
                      blurRadius: 4.0, // Set the blur radius for the shadow
                      spreadRadius: 0.0, // Set the spread radius for the shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(7),
                width: Get.width,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, bottom: 10, top: 10, right: 5),
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/Dwiky.PNG',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Text(
                              'Nama : Dwiky Rachmat G\nNim    : 8020210165\nClass  : 07PT6',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 58)),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(174, 198, 195,
                                        194), // Set the shadow color
                                    offset: Offset(
                                        0, 5), // Set the offset for the shadow
                                    blurRadius:
                                        4.0, // Set the blur radius for the shadow
                                    spreadRadius:
                                        0.0, // Set the spread radius for the shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors
                                      .white, // Set the color of the border
                                  width: 1.0, // Set the width of the border
                                ),
                                color: const Color.fromARGB(174, 234, 231, 229),
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              child: const Text(
                                'Frontend Dev',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(215, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: const [
                    BoxShadow(
                      color:
                          Color.fromARGB(177, 0, 0, 0), // Set the shadow color
                      offset: Offset(0, 5), // Set the offset for the shadow
                      blurRadius: 4.0, // Set the blur radius for the shadow
                      spreadRadius: 0.0, // Set the spread radius for the shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(7),
                width: Get.width,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, bottom: 10, top: 13, right: 5),
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/AbdulDimNastiar.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Text(
                              'Nama : Abdul Dim N\nNim    : 8020210001\nClass  : 07PT6',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 58)),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(
                                top: 5, left: 3, right: 3),
                            width: 240,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(174, 198, 195,
                                        194), // Set the shadow color
                                    offset: Offset(
                                        0, 5), // Set the offset for the shadow
                                    blurRadius:
                                        4.0, // Set the blur radius for the shadow
                                    spreadRadius:
                                        0.0, // Set the spread radius for the shadow
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors
                                      .white, // Set the color of the border
                                  width: 1.0, // Set the width of the border
                                ),
                                color: const Color.fromARGB(174, 234, 231, 229),
                                borderRadius: BorderRadius.circular(
                                    5), // Set the border radius
                              ),
                              child: const Text(
                                'Backend Dev',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
