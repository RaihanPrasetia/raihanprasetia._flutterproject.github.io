// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/borobudur_controller.dart';

class BorobudurView extends StatefulWidget {
  const BorobudurView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BorobudurViewState createState() => _BorobudurViewState();
}

class _BorobudurViewState extends State<BorobudurView> {
  final BorobudurController controller = Get.put(BorobudurController());
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
                  'Candi Borobudur',
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
                  'Borobudur adalah sebuah candi Buddha yang terletak di Provinsi Jawa Tengah, Indonesia. Candi ini merupakan salah satu situs warisan dunia UNESCO dan juga menjadi salah satu tujuan wisata budaya paling populer di Indonesia.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Borobudur dibangun pada abad ke-8 oleh Dinasti Syailendra pada masa pemerintahan Wangsa Sailendra. Konon, candi ini dibangun sebagai tempat peribadatan Buddha, dan juga sebagai simbol kosmologi Buddha yang menggambarkan alam semesta dan perjalanan roh menuju pencerahan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Candi Borobudur memiliki bentuk stupa raksasa yang terdiri dari sembilan tingkat, dengan stupa pusat di puncaknya. Struktur candi ini terbuat dari batu andesit dengan ratusan relief yang menghiasi dindingnya. Relief-relief tersebut menceritakan kisah kehidupan dan ajaran Buddha, yang membuat Borobudur menjadi situs bersejarah yang sangat penting bagi agama Buddha dan juga menjadi saksi bisu peradaban yang maju pada masa lampau.',
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
                  'Buka setiap hari dari jam 06.30 - 16.30',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  'Akomodasi dan Fasilitas Candi Borobudur',
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
                  'Fasilitas pertama yang tersedia adalah musola lengkap dengan perlengkapan sholat. Tidak hanya satu musola, namun panitia menyediakan beberapa musola untuk menunjang kenyamanan para pengunjung. Tidak hanya itu, wisatawan bebas mengambil air wudhu karena ketersediaan air bersih yang melimpah.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '2. Toilet',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Berikutnya, toilet umum bersih tersebar dibeberapa sudut komplek yang mempermudah Anda untuk melakukan aktivitas ke kamar mandi. Kenyamanan dan keamanan terjaga karena setiap petugas siap memberikan arah ketika pengunjung kebingungan.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Pusat Oleh-oleh',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Yang tidak kalah penting mudahnya menemukan penjual oleh-oleh khas. Biasanya para penjual akan menunggu pengunjung di depan pintu keluar. Anda bebas memilih setiap produk khas yang mereka tawarkan. Jangan sungkan untuk menawar ketika membeli dalam jumlah banyak.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Tempat Makan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Selanjutnya, tempat makan yang tersedia dengan berbagai menu khasnya. Warung makan bersih dengan pemandangan candi menjadi sangat mengasyikan. Tidak hanya itu, karena selama menunggu pesanan datang Anda bisa berselfy ria dengan gajah yang masih berada dalam satu kawasan taman.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Gunung Bromo',
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
        title: const Text('Candi Borobudur'),
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
                      image: AssetImage('assets/Candi Borobudur2.jpg'),
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
