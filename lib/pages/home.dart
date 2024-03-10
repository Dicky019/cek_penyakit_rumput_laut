import 'package:cek_penyakit_rumput_laut/constants/data.dart';
import 'package:flutter/material.dart';

import 'package:cek_penyakit_rumput_laut/widgets/home/deskripsi_rumput_laut.dart';
import 'package:cek_penyakit_rumput_laut/widgets/home/kelas_rumput_laut.dart';
import 'package:cek_penyakit_rumput_laut/widgets/home/deteksi_penyakit_rumput_laut.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rumput Laut"),
        actions: [
          IconButton.outlined(
            onPressed: () => _showCustomDialog(context, controller),
            icon: const Icon(Icons.settings_input_antenna),
          )
        ],
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

_showCustomDialog(BuildContext context, TextEditingController controller) {
  const httpString = "http://";
  const port = ":8080";
  controller.text =
      DataConstants.apiUrl.replaceAll(httpString, "").replaceAll(port, "");
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Local Ip Server"),
        content: TextField(
          controller: controller,
        ),
        actions: [
          Theme(
            data: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kembali'),
            ),
          ),
          TextButton(
            onPressed: () {
              DataConstants.apiUrl = httpString + controller.text + port;
            },
            child: const Text('Simpan'),
          ),
        ],
      );
    },
  );
}
