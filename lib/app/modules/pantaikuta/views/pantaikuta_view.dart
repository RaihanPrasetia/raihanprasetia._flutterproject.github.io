// ignore_for_file: deprecated_member_use, unnecessary_const

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/pantaikuta_controller.dart';

class PantaikutaView extends StatefulWidget {
  const PantaikutaView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PantaikutaViewState createState() => _PantaikutaViewState();
}

class _PantaikutaViewState extends State<PantaikutaView> {
  final PantaikutaController controller = Get.put(PantaikutaController());
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
                  'Pantai Kuta',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ListTile(
                title: const Text(
                  'Pantai Kuta adalah salah satu pantai yang terkenal di pulau Bali, Indonesia. Pantai ini terletak di sebelah selatan pulau dan merupakan bagian dari wilayah Kabupaten Badung. Pantai Kuta telah menjadi salah satu tujuan wisata paling populer di Bali dan menarik banyak wisatawan dari seluruh dunia.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Deskripsi Pantai Kuta:',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '1. Pasir Putih: Pantai Kuta terkenal dengan pasir putihnya yang lembut dan halus. Hamparan pasir yang luas menjadikannya tempat yang sempurna untuk bersantai, berjemur di bawah sinar matahari, atau bermain-main di tepi laut.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '2. Ombak: Pantai Kuta juga dikenal karena ombaknya yang kuat dan cocok bagi para penggemar olahraga selancar. Banyak peselancar lokal dan internasional datang ke pantai ini untuk menaklukkan ombak yang menantang.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '3. Pemandangan Matahari Terbenam: Salah satu momen yang paling dinantikan di Pantai Kuta adalah matahari terbenam yang indah. Saat matahari mulai tenggelam di ufuk barat, langit berubah menjadi palet warna-warni yang menakjubkan, menciptakan pemandangan spektakuler bagi para pengunjung.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '4. Hidangan Makanan dan Minuman: Di sepanjang pantai, Anda akan menemukan berbagai restoran, bar, dan kafe yang menyajikan hidangan lezat dan minuman segar. Pantai Kuta juga dikenal dengan kehidupan malamnya yang ramai dan beragam.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '5. Aktivitas Rekreasi: Selain selancar, Pantai Kuta menawarkan berbagai aktivitas rekreasi lainnya seperti bermain voli pantai, menyewa papan seluncur, berkeliling naik kuda, atau bahkan menikmati pijat tradisional Bali di bawah layar teduh.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '6. Keberagaman Wisatawan: Pantai Kuta adalah tempat yang ramai dan beragam dengan banyaknya wisatawan dari berbagai negara. Ini menciptakan suasana internasional yang unik di mana Anda dapat bertemu dan berinteraksi dengan orang-orang dari berbagai budaya.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  '7. Infrastruktur Wisata: Pantai Kuta telah dikembangkan dengan baik untuk mendukung industri pariwisata. Anda akan menemukan fasilitas modern, termasuk hotel, vila, toko-toko souvenir, dan pusat perbelanjaan, membuat kunjungan Anda lebih nyaman.',
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
                  'Akomodasi dan Fasilitas Pantai Kuta',
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
                  'Sebagai daerah pariwisata yang sangat terkenal, banyak tersedia penginapan di sekitar Pantai Kuta, mulai dari penginapan bertarif murah hingga hotel berbintang. Berikut beberapa penginapan yang cukup terkenal dan dekat dengan Pantai Kuta yaitu  Bali Dynasty Resort, Tune Hotel Kuta, Discovery Kartika Plaza Hotel, dan Santika Beach Premiere Hotel.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Tempat Hiburan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Di sepanjang pinggiran Pantai Kuta juga terdapat beberapa tempat hiburan di sekitar Pantai Kuta yaitu caffee, bar, pub, night club, diskotik, karaoke, dll.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Restoran dan Tempat Perbelanjaan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Terdapat pula restoran dengan menyediakan beberapa menu yang spesial seperti ikan laut, warung makan, dan restoran cepat saji. Beberapa diantaranya buka selama 24 jam, sehingga tidak perlu bingung jika merasa lapar pada malam hari. Bagi wisatawan yang memiliki hobi berbelanja, di Pantai Kuta juga banyak terdapat toko-toko souvenir di daerah Kuta. Anda akan menemukan banyak kios penjual kerajinan tangan, aksesories, dan beragam pakaian khas Pantai Kuta.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Fasilitas dan Layanan Di Kuta, Bali',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Fasilitas pendukung lainnya di Pantai Kuta yaitu seperti ATM. Hal ini tentu memberikan kemudahan bagi wisatawan yang ingin berkunjung dan bermalam di kawasan wisata tersebut. Tak hanya itu, untuk mendukung kebutuhan wisatawan akan sarana transportasi, banyak terdapat jasa penyewaan mobil, motor, dan sepeda. Tarif sewa cukup bervariasi, tergantung pada jenis dan tipe kendaraan. Akan tetapi Anda tidak perlu khawatir atau risau akan mendapatkan harga terlalu mahal, para penyedia jasa sewa kendaraan ini sudah mematok harga dengan tarif wajar.',
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
                  '- Harga Tiket Masuk: Rp 0 (Gratis)\n'
                  '- Biaya Tato Temporer: Rp 50.000 - Rp 300.000\n'
                  '- Biaya Kepang Rambut: Rp 50.000 - Rp 150.000\n'
                  '- Harga Tiket Masuk Teater: Rp 50.000 - Rp 100.000\n'
                  '- Biaya Kepang Rambut: Rp 50.000 - Rp 150.000\n'
                  '- Biaya Sewa Tikar: Rp 10.000 - Rp 15.000\n'
                  '- Biaya Sewa Payung: Rp 25.000\n'
                  '- Biaya Sewa Jet SkiL Rp 150.000 - Rp 250.000\n'
                  '- Biaya Jasa Pijat: Rp 75.000/jam\n'
                  '- Biaya Naik Dokar: Rp 50.000 - 100.000\n',
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
        title: const Text('Pantai Kuta'),
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
                      image: AssetImage('assets/Kuta_2.jpg'),
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
                  color: const Color.fromARGB(59, 0, 0, 0),
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
