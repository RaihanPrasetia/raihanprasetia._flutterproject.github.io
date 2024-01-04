// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/prambanan_controller.dart';

class PrambananView extends StatefulWidget {
  const PrambananView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrambananViewState createState() => _PrambananViewState();
}

class _PrambananViewState extends State<PrambananView> {
  final PrambananController controller = Get.put(PrambananController());
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
                  'Candi Prambanan',
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
                  'Candi Prambanan adalah kompleks candi Hindu yang terletak di dekat Yogyakarta, Provinsi Daerah Istimewa Yogyakarta, Indonesia. Candi ini merupakan salah satu situs warisan dunia UNESCO dan juga menjadi salah satu daya tarik wisata budaya terkemuka di Indonesia.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Kompleks Candi Prambanan terdiri dari beberapa candi yang terletak dalam satu area yang luas. Candi utamanya dikenal dengan sebutan Candi Rara Jonggrang atau Candi Lara Jonggrang. Candi ini merupakan candi utama dan terbesar di antara candi-candi lain di kompleks tersebut.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Candi Prambanan dibangun pada abad ke-9 pada masa pemerintahan dinasti Sanjaya di Kerajaan Mataram Kuno. Candi ini adalah contoh megah dari arsitektur candi Hindu yang indah dan dipengaruhi oleh gaya arsitektur India. Struktur candi ini terdiri dari candi-candi yang menara-menara dengan ukiran-ukiran yang sangat halus dan indah.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Candi utama, Candi Rara Jonggrang, memiliki tiga candi utama di tengahnya, masing-masing didedikasikan untuk Trimurti, yaitu Brahma, Vishnu, dan Shiva, yang merupakan tiga dewa utama dalam agama Hindu. Di sekitar candi utama ini terdapat candi-candi lebih kecil yang juga menghadap ke arah utama.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Selain keindahan arsitektur dan ukiran, Candi Prambanan juga memiliki cerita epik yang menarik, terutama yang berkaitan dengan legenda tentang Candi Rara Jonggrang. Kisah ini menceritakan tentang seorang putri yang menjadi tokoh sentral dalam mitos lokal.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Setiap tahun, Festival Ramayana diadakan di Candi Prambanan, di mana tarian dan drama yang menakjubkan digelar untuk mengenang kisah epik Ramayana, yang menjadi salah satu cerita utama yang terkait dengan candi ini.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Candi Prambanan adalah salah satu peninggalan bersejarah yang penting di Indonesia dan menjadi daya tarik bagi para wisatawan dan para penggemar sejarah serta budaya. Sebagai situs warisan dunia, penting untuk menjaga, merawat, dan menghormati situs ini agar tetap lestari dan dapat dinikmati oleh generasi mendatang.',
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
                  'Buka setiap hari dari jam 06.30 - 17.00',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  'Akomodasi dan Fasilitas Candi Prambanan',
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
                  '1. Mushola',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Untuk mendukung kenyamanan pengunjung para penggurus mendirikan beberapa musola. Anda tidak perlu khawatir dengan mukena dan perangkat shiolat lainnya karena sudah disiapkan. Selain itu air yang melimpah membuat wisatwan tidak perlu takut untuk mencari wudhu. Kemudahan untuk mengakses dan petugas yang siap siaga membantu.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Toilet Umum',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Berikutnya, toilet umum bersih dan tersedia cukup banyak. Anda tidak perlu khwatir antri untuk membuang hajat. Semua toilet dipastikan bersih dan memenuhi standar fasilitas umum yang nyaman sekaligus aman.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Parkir Luas',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Fasilitas lain yang tersaji adalah area parkis yang sangat luas sehingga semua jenis kendaraan bisa masuk dengan rapi. Bukan hanya itu petugas siap siaga untuk mengatur jalannya kendaraan yang masuk dan keluar. Jadi, tidak akan ada tumpukan mobil atau motor yang membuat macet.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Taman',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Selain menyediakan area kebun binatang yang berada di belakang komplek Prambanan. Di area yang sama juga disediakan taman luas yang memungkinkan setiap pengunjung untuk beristirahat dan menghabiskan waktu luang bersama keluarga dan teman di taman yang asri sekaligus nyaman tersebut.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Candi Prambanan',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  '- Harga Tiket Masuk (>10tahun): Rp 50.000/orang\n'
                  '- Harga Tiket Masuk (<10tahun): Rp 25.000/orang\n'
                  '- Harga Tiket Masuk Rombongan : Rp 20.000\n'
                  '- Biaya Paket Dewasa : Rp 75.000\n'
                  '- Biaya Paket Anak-ana : Rp 35.000\n'
                  '- Biaya Paket Dewasa: Rp 75.000\n'
                  '- Biaya Paket Anak-anak: Rp 35.000\n',
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
        title: const Text('Candi Prambanan'),
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
                      image: AssetImage('assets/prambanan 2.jpg'),
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
