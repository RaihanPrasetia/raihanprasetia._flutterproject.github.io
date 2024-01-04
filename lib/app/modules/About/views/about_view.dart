import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0d6),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0d6),
        title: const Text(
          'About',
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
                width: 360,
                margin: const EdgeInsets.only(
                    top: 20, bottom: 10, left: 29, right: 29),
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: const Image(
                    image: AssetImage('assets/4467714.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                    title: Text(
                      'Wonderind',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        ' Indonesia adalah negara yang diberkati dengan keajaiban yang tak terhitung jumlahnya. Yang membuat negara ini unik adalah budayanya yang beragam dan alamnya yang luar biasa, yang harus dirayakan dan dilestarikan oleh semua orang. Oleh karena itu, Kementerian Pariwisata dan Ekonomi Kreatif Republik Indonesia menghadirkan Wonderful Indonesia, sebuah janji untuk menjadikan Indonesia tempat di mana setiap orang dapat menikmati keajaiban alam dan budayanya.\n WonderInd adalah kepanjangan dari "Wonderful Indonesia" yang merupakan komitmen kami untuk mempromosikan berbagai destinasi di nusantara untuk pariwisata domestik dan internasional. Berdasarkan apa yang ingin dijelajahi dan dialami wisatawan, keajaiban Indonesia telah dibagi menjadi lima kategori: Alam, Kuliner & Kesehatan, Seni & Warisan, Rekreasi & Kenyamanan, dan Petualangan. Ada banyak platform, baik online (media sosial, outlet berita, dan situs web resmi) maupun offline (kemitraan merek & institusi, promosi perjalanan, dll.), Yang digunakan untuk kampanye Wonderful Indonesia.\n Wonderful Indonesia menyambut semua brand, institusi, dan pemangku kepentingan pariwisata untuk menjalin kemitraan dan membantu menyebarkan berita tentang keajaiban yang melimpah di Indonesia.',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.justify,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
