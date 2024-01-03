import 'package:cek_penyakit_rumput_laut/constants/data.dart';
import 'package:flutter/material.dart';

import 'package:cek_penyakit_rumput_laut/widgets/home/deskripsi_rumput_laut.dart';
import 'package:cek_penyakit_rumput_laut/widgets/home/kelas_rumput_laut.dart';
import 'package:cek_penyakit_rumput_laut/widgets/home/deteksi_penyakit_rumput_laut.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pendeteksi Penyakit Rumput Laut"),
      ),
      body: ListView(
        children: const [
          DeskripsiRumputLautWidget(
            jenisRumputLautModel: DataConstants.deskripsiRumputLaut,
          ),
          Divider(),
          KelasPenyakitRumputLautWidget(
            listJenisRumputlaut: DataConstants.listJenisRumputlaut,
          ),
          Divider(),
          DeteksiPenyakitRumputLautWidget(),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
