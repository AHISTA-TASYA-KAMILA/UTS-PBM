import 'package:flutter/material.dart';

class Tabpage2 extends StatefulWidget {
  const Tabpage2({super.key});

  @override
  State<Tabpage2> createState() => _Tabpage2State();
}

class _Tabpage2State extends State<Tabpage2> {
  // Daftar contoh data gambar, nama, dan deskripsi yang sama untuk setiap item
  final List<Map<String, String>> items = List.generate(
    14, // Jumlah total item adalah 14
    (index) => {
      'image': 'assets/gambar/gambar${index + 1}.jpeg', // Path gambar
      'name': [
        'Jihann Jan',
        'Mas Awanm',
        'Alex',
        'Fajarr',
        'Awann lagii',
        'Nadyaa',
        'Susantika',
        'UlfahDillah',
        'Diva Rizka',
        'Ruth Tika',
        'Ririn M',
        'Dewii',
        'Airaaa',
        'Mamakuu'
      ][index], // Nama berbeda untuk setiap item
      'description': 'Hallo Guysss...', // Deskripsi yang sama
    },
  );

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 kolom kesamping
        crossAxisSpacing: 8.0, // Spasi antar kolom
        mainAxisSpacing: 8.0, // Spasi antar baris
        childAspectRatio: 0.8, // Rasio tampilan item (lebih vertikal)
      ),
      itemCount: items.length, // Total 14 item
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Membatasi ukuran gambar dengan ClipRRect untuk menghindari overflow
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(8.0), // Sudut membulat untuk gambar
                child: AspectRatio(
                  aspectRatio:
                      1 / 1, // Mengatur rasio aspek agar gambar tidak melebar
                  child: Image.asset(
                    items[index]['image']!,
                    fit:
                        BoxFit.cover, // Menyesuaikan gambar ke dalam pembungkus
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Nama item
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  items[index]['name']!, // Menampilkan nama yang berbeda-beda
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              // Deskripsi item yang sama untuk semua item
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  items[index]
                      ['description']!, // Menampilkan deskripsi yang sama
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 143, 143, 143),
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
