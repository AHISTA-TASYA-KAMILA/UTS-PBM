import 'package:flutter/material.dart';

class Tabpage3 extends StatefulWidget {
  const Tabpage3({super.key});

  @override
  State<Tabpage3> createState() => _Tabpage3State();
}

class _Tabpage3State extends State<Tabpage3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Membungkus CircleAvatar dengan Container untuk menambahkan bingkai
          Container(
            padding: EdgeInsets.all(4.0), // Padding di sekitar CircleAvatar
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black, // Warna bingkai
            ),
            child: CircleAvatar(
              radius: 60, // Ukuran lingkaran
              backgroundImage: AssetImage(
                  'assets/gambar/gambar15.jpeg'), // Ganti dengan path gambar yang benar
            ),
          ),
          const SizedBox(height: 20), // Spasi antara foto dan teks

          // Nama lengkap
          const Text(
            'Ahista Tasya Kamila',
            style: TextStyle(
              fontSize: 24, // Ukuran teks
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
          const SizedBox(height: 10), // Spasi antara nama dan email

          // Email UNSIKA
          const Text(
            '2210631170053@student.unsika.ac.id',
            style: TextStyle(
              fontSize: 16, // Ukuran teks
              color: Color.fromARGB(255, 3, 3, 3), // Warna teks abu-abu
            ),
          ),
        ],
      ),
    );
  }
}
