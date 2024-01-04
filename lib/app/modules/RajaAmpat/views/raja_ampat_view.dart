// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/raja_ampat_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class RajaAmpatView extends StatefulWidget {
  const RajaAmpatView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RajaAmpatViewState createState() => _RajaAmpatViewState();
}

class _RajaAmpatViewState extends State<RajaAmpatView> {
  final RajaAmpatController controller = Get.put(RajaAmpatController());
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
                  'Raja Ampat',
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
                  'Raja Ampat adalah sebuah wilayah yang terletak di Provinsi Papua Barat, Indonesia. Wilayah ini terkenal karena keindahan alamnya, terutama kekayaan bawah lautnya yang luar biasa. Raja Ampat terdiri dari sekitar 1,500 pulau-pulau kecil yang tersebar di sekitar laut Papua bagian barat.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Tempat ini sangat populer bagi para penyelam, snorkeler, dan pecinta alam yang ingin mengeksplorasi keindahan terumbu karang, biota laut yang beragam, dan pemandangan alam yang menakjubkan. Terumbu karang di Raja Ampat adalah salah satu yang paling kaya dan indah di dunia, dengan jumlah spesies laut yang luar biasa banyak.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Selain aktivitas bawah laut, Raja Ampat juga menawarkan pemandangan alam yang memukau di darat, seperti tebing karst yang menjulang, hutan lebat, dan pantai-pantai berpasir putih. Penduduk lokal di Raja Ampat juga dikenal ramah dan memiliki kearifan lokal yang unik.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Karena keindahannya yang menakjubkan dan keragaman hayati yang melimpah, Raja Ampat menjadi salah satu destinasi pariwisata favorit di Indonesia dan juga telah menarik perhatian wisatawan internasional. Penting untuk selalu menjaga dan melestarikan keindahan alam Raja Ampat dengan bertanggung jawab saat mengunjungi wilayah tersebut.',
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
                  'Akomodasi dan Fasilitas Raja Ampat',
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
                  '1. Penyewaan Speedboat',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Untuk dapat menikmati tiap sudut keindahan laut Raja Ampat, kamu perlu menyewa speedboat yang tersedia di sana. Para pengunjung tidak perlu bingung, di sana terdapat beberapa jasa penyewaan speedboat yang bisa dengan mudah ditemukan.\nDengan menyewa speedboat kamu bisa menjelajahi setiap area di Raja Ampat dengan lebih maksimal karena tempat wisata di Raja Ampat terletak di pulau-pulau yang terpisahkan oleh laut.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Penginapan Dengan Harga Terjangkau',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Pulau ini memiliki banyak sekali penginapan yang tersedia bagi para wisatawan. Di Raja Ampat, tidak semua penginapan dan biaya hidup mahal.\nUntuk tips menghemat, terdapat resort dan juga hotel yang dapat dipilih sesuai dengan kebutuhan dan budget yang kamu miliki. Tentunya semua penginapan sudah dilengkapi dengan fasilitas terbaik seperti toilet dalam, koneksi wi-fi dan juga AC.\nBeberapa di antara penginapan dengan harga terjangkau ini antara lain Penginapan Lestari, Cemara Resort and Homestay, Gurara Dive Resort, dan Nut Tonton Homestay.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Toko Souvenir Khas Raja Ampat',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Terdapat beberapa desa di Kabupaten Raja Ampat yang memproduksi kerajinan tangan dengan keunikannya masing-masing, sehingga terdapat toko-toko souvenir di berbagai tempat. Kamu bisa langsung datang ke toko souvenir yang tersedia, untuk membeli barang-barang khasnya sebagai oleh-oleh.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Menyelam di perairan Raja Ampat',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Tentu saja daya tarik utama dari Raja Ampat adalah wisata baharinya. Keindahan bawah lautnya sudah menjadi alasan kenapa banyak wisatawan lokal maupun asing untuk datang berkunjung ke Raja Ampat. Pesona bawah laut ini bisa disaksikan langsung dengan menyelam. Tersedia banyak sekali spot menyelam dengan keunikannya masing-masing, yang dapat dicoba untuk dijelajahi.\nKarena banyaknya jenis ikan yang hidup di perairannya, tak heran jika Pulau Raja Ampat dinobatkan sebagai ibu kota ikan sedunia. Bahkan banyak sekali orang-orang terkenal yang sudah melihat langsung keindahan bawah laut Raja Ampat.',
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
        title: const Text('Raja Ampat'),
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
                      image: AssetImage('assets/Raja Ampat2.jpg'),
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
