import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:cek_penyakit_rumput_laut/models/penyakit_rumput_laut.dart';
import 'package:cek_penyakit_rumput_laut/service/prediction_penyakit_rumput_laut_service.dart';

class DeteksiPenyakitRumputLautWidget extends StatefulWidget {
  const DeteksiPenyakitRumputLautWidget({super.key});

  @override
  State<DeteksiPenyakitRumputLautWidget> createState() =>
      _DeteksiPenyakitRumputLautWidgetState();
}

class _DeteksiPenyakitRumputLautWidgetState
    extends State<DeteksiPenyakitRumputLautWidget> {
  final service = PredictionPenyakitRumputLautService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Deteksi Penyakit Rumput Laut",
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            "Deteksi Penyakit Rumput Laut Ini Menggunakan Sklearn Neighbors dan KKN Hanya Untuk Mendeteksi: 1. Penyakit ice-ice, 2. Penyakit kerak bryzoan, 3. Penyakit bulu kucing.",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {
                  service.predictImage(ImageSource.camera).then((value) {
                    if (value != null) {
                      _showCustomDialog(context, data: value);
                    }
                  });
                },
                icon: const Icon(
                  Icons.camera,
                ),
                label: const Text("Mengambil foto"),
              ),
              TextButton.icon(
                onPressed: () {
                  service.predictImage(ImageSource.gallery).then((value) {
                    if (value != null) {
                      _showCustomDialog(context, data: value);
                    }
                  });
                },
                icon: const Icon(
                  Icons.photo,
                ),
                label: const Text("Pilih dari galeri"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

_showCustomDialog(
  BuildContext context, {
  required PenyakitRumputLaut data,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final size = MediaQuery.sizeOf(context);
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        title: Container(
          height: 180,
          width: size.width - 30,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
            image: DecorationImage(
              image: FileImage(
                data.image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        content: data.predictedClass == null
            ? DialogSuccsec(data: data)
            : const Icon(
                Icons.close_rounded,
                size: 30,
              ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
}

class DialogSuccsec extends StatelessWidget {
  final PenyakitRumputLaut data;
  const DialogSuccsec({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              (data.predictedClass ?? "").toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 35,
              // width: 35,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(30),
              ),
              // child:
              child: Center(
                child: Text(
                  "${data.predictedAccuracy}%",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        Text(
          data.solusi,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
