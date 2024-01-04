// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/ubud_controller.dart';

class UbudView extends StatefulWidget {
  const UbudView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UbudViewState createState() => _UbudViewState();
}

class _UbudViewState extends State<UbudView> {
  final UbudController controller = Get.put(UbudController());
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
                  'Air Terjun Ubud',
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
                  'Pada awalnya air terjun Ubud bukan terbentuk alami seperti air terjun lain tetapi karena secara tak di sengaja terjadi kebocoran saluran irigasi sawah yang merembes pada dinding tebing untuk waktu yang lama. Sebab maraknya kegiatan penduduk sekitar yang menambang batu padas di area hal yang demikian membuat air menjadi mengalir pada satu titik dan menjadi air terjun yang ke depannya akan menjadi aset tamasya yang cukup potensial bagi desa dan tentunya menambah deretan tujuan tamasya selama berlibur ke Bali.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Air terjun ini memiliki daya tarik yang unik karena di bagian dinding tebing batu padas, kita dapat menikmati estetika seni ukir Bali berbentuk topeng-topeng yang di pahat segera di dinding tebing oleh pekerja seni lokal yang yaitu penduduk absah bernama Nyoman Retana. Tak cuma di bagian dinding saja yang dihiasi ukiran, bebatuan besar yang tersebar di sekitar si kecil sungai malah tidak luput menjadi kanvas kreativitas seni pahatan Nyoman Retana yang mempunyai harapan supaya air terjun ini bisa menarik pelancong untuk berkunjung.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Suasana di air terjun ini masih sungguh-sungguh alami dan untuk mencapai lokasi air terjun, kita harus lewat tanah penduduk kemudian melalui jalan setapak yang kiri dan kanan masih merupakan rumput alang-alang. Untuk menuju air terjunnya sendiri sudah ada anak tangga yang cukup aman. Mendekati titik air terjun, sembari menuruni buah hati tangga kita sudah bisa menikmati karya seni pahat di dinding tebing.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const ListTile(
                subtitle: Text(
                  'Sungai yang mengalir di bawah air terjun ini memiliki arus yang cukup deras dengan ketinggian sekitar pinggang orang dewasa, warga sekitar mengikatkan tali dari satu sisi sungai ke ujung sisi yang lain untuk berpegangan sekiranya berharap menyeberang ke air terjun supaya tak terbawa arus. Namun di sayangkan, di lokasi air terjun ini belum terdapat toilet ataupun ruang bilas dan berganti baju, tak di sarankan untuk melakukan kegiatan yang bermain air yang mewajibkan kita berbilas dan berganti pakaian.',
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
                  'Akomodasi dan Fasilitas Air Terjun Ubud',
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
                  'Lokasi air terjun Ubud ini malah masih kental aura pedesaan sehingga tidak banyak tempat menginap di sekitarnya, yang terdekat berjarak 300m ialah Guest House Dhi Ari dengan kisaran harga Rp200.000/ malam.',
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
                  'Tidak di rekomendasikan untuk membawa kendaraan roda empat seandainya berkeinginan berkunjung ke sini. Untuk masuk ke lokasi ini pengunjung mendonasikan Rp10.000 untuk parkir, kebersihan dan pembenaran jalan. Warung cinderamata ataupun pujasera tidak ada di sekitar lokasi.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '3. Tempat Makan',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Air Terjun Ubud menyediakan fasilitas penunjang untuk melengkapi keindahan wisata. Tempat makan sudah ada namun tidak terlalu banyak di sekitar air terjun cantik ini. Warga biasanya sering membuka warung di hari-hari ramainya pariwisata. Toilet mudah ditemukan dan memiliki air mengalir yang bersih dan segar.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '4. Tempat Ganti',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                subtitle: const Text(
                  'Tempat ganti tersedia di dekat kamar mandi untuk siapa saja setelah bermain di air. Lalu kita lihat di setiap sudut terhampar kursi-kursi yang bisa digunakan untuk istirahat. Gazebo yang beratap juga ada agar traveler tidak merasakan panas terik. Masjid dan tempat ibadah lainnya masih belum terlihat karena air terjun hanya dikelilingi oleh pepohonan yang rimbun.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'Harga Tiket Masuk Air Terjun  Ubud',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  'Harga tiket masuk Rp 3.000 untuk sepeda motor dan Rp 5.000 untuk kendaraan roda empat. Anggaran parkirnya tentu tidak mahal karena sebanding dengan pengamanan jaga. Bahkan lahan tersebut sebagian besar telah disediakan oleh manajemen untuk kendaraan.',
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
        title: const Text('Air Terjun Ubud'),
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
                      image: AssetImage('assets/sumampam.jpg'),
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
