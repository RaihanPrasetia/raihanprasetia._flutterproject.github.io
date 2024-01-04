// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/gunung_bromo_controller.dart';

class GunungBromoView extends StatefulWidget {
  const GunungBromoView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GunungBromoViewState createState() => _GunungBromoViewState();
}

class _GunungBromoViewState extends State<GunungBromoView> {
  final GunungBromoController controller = Get.put(GunungBromoController());
  void _launchLocationUrl() async {
    const String url =
        'https://www.google.com/maps/search/pantai+kuta/@-8.7188883,115.1583976,14.76z?hl=id&entry=ttu';
    if (await canLaunch(url)) {
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
                  'Gunung Bromo',
                  style: GoogleFonts.laila(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'Gunung Bromo adalah sebuah gunung berapi aktif yang terletak di Jawa Timur, Indonesia. Gunung ini merupakan salah satu tujuan wisata alam paling populer di Indonesia, terutama bagi para pecinta keindahan alam dan fotografi.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Gunung Bromo terletak di kawasan Taman Nasional Bromo Tengger Semeru, yang mencakup beberapa gunung dan lahan berbukit dengan lanskap yang menakjubkan. Kawah gunung ini memiliki diameter sekitar 800 meter dan dikelilingi oleh lautan pasir luas yang dikenal sebagai Laut Pasir Bromo.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Setiap pagi, para pengunjung dapat menyaksikan pemandangan matahari terbit yang spektakuler dari puncak Gunung Penanjakan, salah satu titik terbaik untuk menikmati panorama indah Gunung Bromo dan lingkungan sekitarnya. Pengunjung juga memiliki kesempatan untuk mendaki ke kawah Gunung Bromo, meskipun beberapa waktu tertentu akses ke kawah dapat ditutup sementara karena aktivitas vulkanik yang meningkat.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                style: GoogleFonts.laila(
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
                  'Akomodasi dan Fasilitas Gunung Bromo',
                  style: GoogleFonts.laila(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '1. Transportasi Memadai',
                  style: GoogleFonts.laila(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Transportasi menjadi salah sat faktor yang membuat para wisatawan betah dan kembali berkunjung. Tidak heran jika kemudian para penyelenggaran menyiapkan berbagai kendaraan untuk mengantarkan para pengunjug untuk sampai di tempat tujuannya dengan cepat dan efisien. Ketersedian fasilitas ini tentu akan membantu Anda untuk menghemat tenaga sebelum proses pendakian.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              ListTile(
                title: Text(
                  '2. Mushola',
                  style: GoogleFonts.laila(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Selayaknya tempat wisata lain disini juga para pengunjug tersedia tempat ibadah yang selalu dijaga kebersihannya. Tidak hanya itu semua sudah lengkap dengan perlengkapan sholat. Sehingga Anda tidak perkhawatir banyak hal mengenai kenyamanan ibadah. Nilai lainnya adalah penduduk di sekitar lereng yang sangat ramah sehingga tidak perlu sungkan untuk bertanya.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              ListTile(
                title: Text(
                  '3. Pusat Oleh-oleh',
                  style: GoogleFonts.laila(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Kepopuleran Gunung Bromo tidak perlu dipertanyakan lagi. Tidak heran kalau kemudian banyak para wisatawan datang dari berbagai daerah dan manca negara. Sebagai oleh-oleh Anda bisa mendapatkannya dengan mudah. Sebab, para penduduk asli berjajar menyediakan berbagai oleh-oleh khas Bromo yang bisa',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              ListTile(
                title: Text(
                  '4. Wisata Kuliner',
                  style: GoogleFonts.laila(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Bukan hanya pusat oleh-oleh, disini Anda bisa sangat mudah berwisata kuliner. Berbagai menu andalan khas Jawa Timur siap memanjakan lidah. Tidak perlu khawatir karena semua makanan ini dijajakan dengan harga yang cukup terjangkau. Sangat cocok untuk para wisatawan yang membutuhkan banyak tenaga dalam melakukan pendakian.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Gunung Bromo',
                  style: GoogleFonts.laila(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  '- Harga Tiket Masuk Weekday: Rp 29.000\n'
                  '- Harga Tiket Masuk Weekend: Rp 34.000\n'
                  '- Harga Tiket Masuk Weekday WNA: Rp 220.000\n'
                  '- Harga Tiket Masuk Weekend WNA: Rp 320.000\n'
                  '- Biaya Parkir Motor: Rp 5.000\n'
                  '- Biaya Parkir Mobil: Rp 10.000\n'
                  '- Biaya Parkir Sepeda: Rp 2.000\n'
                  '- Biaya Parkir Kuda: Rp 1.500\n',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
        title: const Text('Gunung Bromo'),
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
                      image: AssetImage('assets/Gunug bromo2.jpg'),
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
                      color: Colors.red,
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
