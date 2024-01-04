import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/natsepa_controller.dart';

class NatsepaView extends StatefulWidget {
  const NatsepaView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NatsepaViewState createState() => _NatsepaViewState();
}

class _NatsepaViewState extends State<NatsepaView> {
  final NatsepaController controller = Get.put(NatsepaController());
  void _launchLocationUrl() async {
    const String url =
        'https://www.google.com/maps/search/pantai+kuta/@-8.7188883,115.1583976,14.76z?hl=id&entry=ttu';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    }
  }

  int currentIndex = 0;
  List<Widget> get _views => [
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  'Pantai Natsepa',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'Pantai Natsepa adalah salah satu pantai yang terletak di Pulau Ambon, Maluku, Indonesia. Pantai ini merupakan salah satu destinasi wisata populer di Ambon karena keindahan alamnya yang menakjubkan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Pantai Natsepa menawarkan pemandangan yang indah dengan pasir putih yang lembut dan air laut yang jernih berwarna biru. Air laut di pantai ini relatif tenang, sehingga sangat cocok untuk berenang dan bermain air, terutama bagi keluarga dan anak-anak.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Selain aktivitas pantai, Pantai Natsepa juga menyediakan fasilitas yang memadai untuk para pengunjung, seperti warung-warung makan yang menjual makanan khas dan hidangan laut segar. Anda dapat menikmati santap di pinggir pantai sambil menikmati pemandangan laut yang menenangkan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Pantai Natsepa juga populer sebagai tempat untuk menyaksikan matahari terbenam yang spektakuler. Matahari terbenam di pantai ini menciptakan pemandangan yang memukau dengan warna langit yang beraneka ragam.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Selain keindahannya, Pantai Natsepa juga memiliki suasana yang ramai dan hidup, terutama saat akhir pekan dan liburan. Bagi yang ingin berlibur dengan nuansa alam yang segar dan menyenangkan, Pantai Natsepa adalah pilihan yang tepat untuk dikunjungi di Pulau Ambon.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
              ),
              Text(
                'Cek Location Here',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(25),
              ),
              IconButton(
                onPressed: _launchLocationUrl,
                icon: const Icon(
                  Icons.place_rounded,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(
                  FontAwesomeIcons.clock,
                  color: Colors.black,
                ),
                minLeadingWidth: BorderSide.strokeAlignInside,
                title: Text(
                  'Buka setiap hari 24 jam',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  'Akomodasi dan Fasilitas Pantai Natsepa',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '1. Penginapan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Di sekitar pantai Natsepa, sudah terdapat penginapan atau hotel yang tersedia tak jauh dari Pantai Natsepa. Bahkan tersedia hotel yang menghadap pantai langsung sehingga lebih nyaman menyaksikan matahari terbit.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Parkir',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Area parkir yang cukup luas dan nyaman menjadi fasilitas pertama yang akan dilihat saat berkunjung kesini.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Musola dan Toilet',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Fasilitas lain seperti toilet dengan kebersihan yang sangat terjaga akan menambah kenyamanan bagi para wisatawan yang berlibur kesini. Adanya fasilitas ibadah seperti mushola yang bersih dan nyaman juga menjadi nilai plus pantai cantik ini.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Tempat Hiburan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Dilengkapi dengan beberapa fasilitas bermain tentu akan membuat liburan anda semakin seru. Perahu-perahu kayu, pelampung anak serta Banana Boat yang terparkir di bibir pantai siap menemani keceriaan berlibur wisatawan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Pantai Kuta',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  'Cukup membayar Rp 3.000 saja untuk satu orang, maka pengunjung sudah dapat bisa menikmati semua tawaran di dalamnya sepuas yang diinginkan. Selain itu, biaya parkir pantai cantik ini juga cukup murah, yakni hanya dibandrol mulai seharga Rp 5.000 sampai Rp 10.000 saja.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0d6),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0d6),
        title: const Text('Pantai Natsepa'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 29, right: 29),
                  height: 180,
                  width: Get.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(
                      image: AssetImage('assets/natsepa 3.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 29, right: 29),
                  height: 180,
                  width: Get.width,
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuText('About', 0),
                  buildMenuText('Location', 1),
                  buildMenuText('Fasilitas', 2),
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
