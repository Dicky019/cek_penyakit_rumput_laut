import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:cek_penyakit_rumput_laut/models/penyakit_rumput_laut.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../constants/data.dart';

class PredictionPenyakitRumputLautService {
  final imagePicker = ImagePicker();

  Future<Map<String, dynamic>> uploadFile(File file) async {
    var request =
        http.MultipartRequest('POST', Uri.parse(DataConstants.apiUrl));
    request.files.add(await http.MultipartFile.fromPath('file', file.path));

    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        // Read and decode the response body as JSON
        var responseBody = await response.stream.bytesToString();
        var jsonData = json.decode(responseBody);

        log('File berhasil diunggah!');

        // You can return the decoded JSON here
        return jsonData;
      } else {
        log('Gagal mengunggah file. Status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error: $e');
    }

    // Return an empty map in case of failure
    return {};
  }

  Future<PenyakitRumputLaut?> predictImage(ImageSource imageSource) async {
    try {
      final imageX = await imagePicker.pickImage(
        source: imageSource,
      );

      if (imageX != null) {
        EasyLoading.show();
        log('File', name: "imageX");
        final image = File(imageX.path);
        // await Future.delayed(const Duration(seconds: 1));
        final result = await uploadFile(image);
        log(result.toString(), name: "result");

        EasyLoading.dismiss();
        return PenyakitRumputLaut.fromResult(
          result,
          image,
        );
      }

      return null;
    } catch (e) {
      log(e.toString(), name: "error imagePicker");
      return null;
    }
  }
}
