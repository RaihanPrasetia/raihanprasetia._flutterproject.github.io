import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/kampoengkartsa_controller.dart';

class KampoengKartsaView extends StatefulWidget {
  const KampoengKartsaView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KampoengKartsaViewState createState() => _KampoengKartsaViewState();
}

class _KampoengKartsaViewState extends State<KampoengKartsaView> {
  final KampoengkartsaController controller =
      Get.put(KampoengkartsaController());
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
                  'Kampoeng Karst',
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
                  'Kampoeng Karst Rammang-Rammang, atau lebih dikenal sebagai Rammang-Rammang, adalah sebuah desa yang terletak di Kabupaten Maros, Provinsi Sulawesi Selatan, Indonesia. Desa ini terkenal karena keindahan alamnya yang menakjubkan, terutama formasi karst yang spektakuler dan lanskap yang memesona.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Rammang-Rammang adalah salah satu daerah karst terbesar di Indonesia dan merupakan bagian dari Taman Nasional Karst Maros-Pangkep, yang juga telah diakui sebagai Situs Warisan Dunia UNESCO. Karst adalah bentang lahan yang terbentuk dari proses pelarutan batuan kapur oleh air, yang menciptakan gua-gua, ceruk-ceruk, dan formasi batuan menarik lainnya.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Pemandangan di Rammang-Rammang sangat mengesankan dengan kehadiran tebing-tebing batu kapur yang menjulang tinggi dan hijau, serta sungai-sungai yang mengalir di antara formasi karst. Pengunjung dapat menikmati keindahan alam ini dengan berjalan-jalan di sekitar desa, berlayar menggunakan perahu tradisional di sungai-sungai, atau menjelajahi gua-gua yang menarik.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Selain keindahan alamnya, Rammang-Rammang juga menawarkan pengalaman kehidupan pedesaan yang autentik. Pengunjung dapat berinteraksi dengan penduduk setempat, melihat kegiatan sehari-hari mereka, dan mencicipi kuliner khas daerah ini.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Rammang-Rammang juga menjadi tempat favorit bagi para pecinta fotografi karena keindahan pemandangannya yang unik dan menakjubkan. Matahari terbenam di Rammang-Rammang juga sangat menarik untuk disaksikan, memberikan pemandangan langit berwarna-warni di balik tebing-tebing batu karst.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Jika Anda mencari pengalaman alam yang menakjubkan dan ingin menjelajahi keajaiban geologi, Rammang-Rammang adalah destinasi yang sempurna untuk dikunjungi. Namun, karena popularitasnya yang meningkat, penting untuk menjaga kelestarian alam dan lingkungan saat mengunjungi tempat ini.',
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
                  'Buka setiap hari dari jam 09.00 - 17.00',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  'Beragam Wisata Kampoeng Karst',
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
                  '1. Taman Hutan Batu Kapur',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Taman Hutan Batu Kapur Rammang-rammang merupakan satu-satunya di Indonesia dan terluas ketiga di dunia setelah Taman Hutan Batu Tsingy di Madagaskar dan Taman Hutan Batu Yunan yang ada di Cina. Terdapat dua komplek taman hutan batu di kawasan ini, yaitu di bagian utara dan selatan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Telaga atau Taman Bidadari',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Taman bidadari adalah sebuah telaga yang berada di kawasan tengah-tengan bukit kapur Rammang-rammang. Air yang mengsi telaga berasal dari celah-celah batuan kapur. Untuk mencapai lokasi ini, kita harus berjalan kaki melewati jalan setapak yang terbentuk dari pecahan batu kapur. Meski cukup berbahaya dan menantang karena harus mendaki dan berjalan di tepi jurang. Ketika sampai di taman bidadari rasa-rasanya perjuangan itu akan pantas.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Gua Bulu Barakka',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Berada tidak jauh dari hutan taman batu kapur, kita dapat menuju gua bulu’ barakka’ dengan mengendari motor atau berjalan kaki sekitar 500 meter. Nama bulu barakka dalam bahasa Makassa memiliki arti “gunung anugerah”. Disini, kita akan menemukan situs prasejarah di dalam gua, berupa cap tangan manusia purba dan gambar-gambar dari kehidupan masa lalu.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Gua Telapak Tangan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Masih satu jalur dengan telaga bidadari, untuk mencapai gua telapak tangan kita harus berjalan kaki sejauh 2 km. Hampir sama dengan apa yang dapat kita lihat di gua bulu barakka, disini kita juga akan menikmati situs prasejarah peninggalan manusia purba.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '5. Sungai Pute',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Sungai Pute menjadi akses masuk dari dermaga menuju Kampung Berua. Pertama kali datang, pengunjung akan disambut oleh sungai ini. Sungai Pute dikelilingi oleh pepohonan hijau yang membuat pemandangan semakin asri.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '6. Kampung Berua',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Kampung Berua menjadi salah satu tujuan yang wajib dikunjungi di Wisata Rammang Rammang. Kamu akan melihat bagaimana peduduk Kampung Berua tinggal di area yang dikelilingi sawah dan pegunungan karst. Kamu bisa menikmati makanan lokal penduduk kampung, sambil menikmati panorama alam yang memukau dan fenomenal.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Kampoeng Karst',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  'Harga tiket masuknya Rp 5.000. Perahu susur sungai Rp 350.000, dan tarif masuk beberapa spot wisata umumnya Rp 10.000. Ada juga opsi atraksi wisata seperti watching bird, rock climbing, serta pertunjukan seni budaya dengan harga mulai 300 ribuan-1 juta rupiah.',
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
        title: const Text('Kampoeng Karst'),
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
                      image: AssetImage('assets/rammang1.jpg'),
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
                  buildMenuText('Wisata', 2),
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
