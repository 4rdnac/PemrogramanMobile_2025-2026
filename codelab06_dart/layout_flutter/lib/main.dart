import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi untuk membangun kolom tombol (ikon + teks)
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, // biar sesuai isi
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8), // jarak teks ke ikon
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // --- titleSection (dari langkah 1) ---
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Ranu Agung',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Tiris, Probolinggo, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text("4,5"),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ranu Agung adalah danau vulkanik yang terletak di Desa Ranu Agung, Kecamatan Tiris, Kabupaten Probolinggo, Jawa Timur, Danau ini terbentuk dari aktivitas Gunung Lemongan dan dikelilingi tebing batu tinggi setinggi sekitar 70 meter yang menciptakan panorama alam eksotis dengan air berwarna hijau kebiruan yang jernih. Kedalamannya mencapai sekitar 40 meter, dan suasananya sejuk serta tenang sehingga cocok untuk rekreasi alam, piknik, atau berfoto. Pengunjung dapat menikmati perahu gethek, gazebo sederhana, serta fasilitas dasar seperti area parkir dan warung.'
        '\nCandra Ahmad Dani 2341720187 '
        ,
        softWrap: true,
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Layout Demo")),
        body: ListView(
          children: [
            Image.asset(
              'images/ranu-agung.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
