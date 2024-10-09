import 'package:flutter/material.dart';

import 'package:aplikasiahista/tabpage1.dart';
import 'package:aplikasiahista/tabpage2.dart';
import 'package:aplikasiahista/tabpage3.dart';

// TODO_14 Buat function main dan jalankan aplikasi
void main() {
  runApp(const Tabpage());
}

// TODO_1 Atur nama statelessWidget Class
class Tabpage extends StatelessWidget {
  const Tabpage({super.key});

  // TODO_3 Bangun MaterialApp dan Arahkan property home ke statefulWidget Class
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Homepage(),
    );
  }
}

// TODO_2 Atur nama statefulWidget Class
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // Ubah warna latar belakang
        backgroundColor: const Color.fromARGB(
            255, 254, 254, 254), // Atur warna latar belakang

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 102, 155, 224),
          title: const Text(
            'Chattify',
            style: TextStyle(
              color: Color.fromARGB(
                  255, 5, 5, 5), // Mengubah warna tulisan menjadi putih
              fontFamily: 'roboto',
              fontSize: 26,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // Aksi untuk icon pencarian
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {
                // Aksi untuk icon pengaturan
              },
            ),
          ],
          bottom: const TabBar(
            labelColor:
                Color(0xFF1E2A5E), // Warna ikon dan teks saat tab dipilih
            unselectedLabelColor:
                Color(0xFFE1D7B7), // Warna ikon dan teks saat tab tidak dipilih
            tabs: [
              Tab(icon: Icon(Icons.chat_outlined), text: 'Message'),
              Tab(icon: Icon(Icons.contacts), text: 'Contact'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Tabpage1(), // Halaman Tab 1
            Tabpage2(), // Halaman Tab 2 (dengan grid 2x5)
            Tabpage3(), // Halaman Tab 3
          ],
        ),
      ),
    );
  }
}
