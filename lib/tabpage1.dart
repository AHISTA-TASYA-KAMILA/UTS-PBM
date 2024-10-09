import 'package:flutter/material.dart';

class Tabpage1 extends StatefulWidget {
  const Tabpage1({super.key});

  @override
  State<Tabpage1> createState() => _Tabpage1State();
}

class _Tabpage1State extends State<Tabpage1> {
  // Daftar contoh gambar yang bisa digunakan untuk profil
  final List<String> imagePaths = List.generate(
    15, // total 15 item
    (index) =>
        'assets/gambar/gambar${index + 1}.jpeg', // Lokasi gambar dalam folder assets
  );

  // Daftar judul yang berbeda untuk setiap item
  final List<String> titles = [
    'Jihann jan',
    'Mas Awann',
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
    'Mamakuu',
    'Diriku Sendiri', // Judul ke-15
  ];

  // Daftar deskripsi yang sama untuk setiap item
  final String description = 'Hallo Achaa..';

  // Daftar tanggal yang ingin ditampilkan (bisa diganti sesuai keinginan)
  final List<String> dates = [
    '15/09/2024',
    '14/09/2024',
    '13/09/2024',
    '12/09/2024',
    '11/09/2024',
    '10/09/2024',
    '09/09/2024',
    '08/09/2024',
    '07/09/2024',
    '06/09/2024',
    '05/09/2024',
    '04/09/2024',
    '03/09/2024',
    '02/09/2024',
    '01/09/2024',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15, // minimal 15 list
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25, // Ukuran lingkaran (radius)
            backgroundImage:
                AssetImage(imagePaths[index]), // Gambar untuk profil
          ),

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(titles[index]), // Judul berdasarkan daftar titles
              Text(dates[index],
                  style: const TextStyle(
                      color:
                          Color.fromARGB(255, 0, 0, 0))), // Menampilkan tanggal
            ],
          ),

          subtitle: Text(description), // Deskripsi sama untuk semua item
          onTap: () {
            // Tindakan saat list di tap
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tapped on ${titles[index]}')),
            );
          },
        );
      },
    );
  }
}
