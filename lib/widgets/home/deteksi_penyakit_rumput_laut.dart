// ignore_for_file: use_build_context_synchronously

import 'package:camera/camera.dart';
import 'package:cek_penyakit_rumput_laut/widgets/home/take_image_camera.dart';
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
                onPressed: () async {
                  // Obtain a list of the available cameras on the device.
                  final cameras = await availableCameras();

                  // Get a specific camera from the list of available cameras.
                  final firstCamera = cameras.first;
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TakeImageCamera(
                              camera: firstCamera,
                            )),
                  ) as String?;

                  if (result == null) {
                    return;
                  }

                  final value = await service.chaeckImage(result);

                  if (value != null) {
                    _showCustomDialog(context, data: value);
                  }
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
      return Theme(
        data: ThemeData(
          colorScheme: data.isBukanRumputLaut
              ? ColorScheme.fromSeed(seedColor: Colors.redAccent)
              : ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        ),
        child: AlertDialog(
          titlePadding: EdgeInsets.zero,
          title: Container(
            height: 180,
            width: size.width - 10,
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
          content: DialogSuccsec(data: data),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
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
            Expanded(
              flex: 7,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  (data.predictedClass ?? "").toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Spacer(flex: data.predictedAccuracy != null ? 1 : 3),
            if (data.predictedAccuracy != null)
              Expanded(
                flex: 2,
                child: Container(
                  height: 35,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightGreen),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // child:
                  child: Center(
                    child: Text(
                      "${data.predictedAccuracy?.toInt() ?? "0"}%",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
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
