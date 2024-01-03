import 'dart:developer';

import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:cek_penyakit_rumput_laut/models/jenis_rumput_laut.dart';

import 'bottom_sheet_widget.dart';

class KelasPenyakitRumputLautWidget extends StatelessWidget {
  final List<JenisRumputLautModel> listJenisRumputlaut;

  const KelasPenyakitRumputLautWidget({
    super.key,
    required this.listJenisRumputlaut,
  });

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
            "Kelas Penyakit Rumput Laut",
            style: TextStyle(fontSize: 16),
          ),
          ...List.generate(
            (listJenisRumputlaut.length ~/ 2),
            (i) {
              final index = i * 2;
              final data = listJenisRumputlaut[index];
              log("$index ${data.title}", name: "Index");
              final data2 = listJenisRumputlaut[index + 1];
              log("${index+1} ${data2.title}", name: "Index");
              return Column(
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemKelasPenyakitRumputLaut(
                        data: data,
                      ),
                      ItemKelasPenyakitRumputLaut(
                        data: data2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ItemKelasPenyakitRumputLaut extends StatelessWidget {
  const ItemKelasPenyakitRumputLaut({
    super.key,
    required this.data,
  });

  final JenisRumputLautModel data;

  @override
  Widget build(BuildContext context) {
    onPressed(JenisRumputLautModel data) {
      showFlexibleBottomSheet<void>(
        context: context,
        anchors: [0, 0.5, 0.8],
        minHeight: 0,
        initHeight: 0.5,
        isSafeArea: true,
        bottomSheetBorderRadius: BorderRadius.circular(16),
        maxHeight: 1,
        builder: (_, scrollController, __) {
          return BottomSheetWidget(
            data: data,
            controller: scrollController,
          );
        },
      );
    }

    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () => onPressed(data),
      child: Container(
        height: (size.width / 2) - 22,
        width: (size.width / 2) - 22,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightGreen),
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              data.imagePath,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 120,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade100.withOpacity(0.8),
                  // border: Border.all(color: Colors.lightGreen),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  data.title,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            IconButton.filledTonal(
              onPressed: () => onPressed(data),
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightGreen.shade100.withOpacity(0.8),
              ),
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),
      ),
    );
  }
}
