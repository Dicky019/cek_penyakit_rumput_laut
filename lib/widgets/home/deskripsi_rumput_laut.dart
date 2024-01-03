import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:cek_penyakit_rumput_laut/models/jenis_rumput_laut.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet_widget.dart';

class DeskripsiRumputLautWidget extends StatelessWidget {
  const DeskripsiRumputLautWidget({
    super.key,
    required this.jenisRumputLautModel,
  });

  final JenisRumputLautModel jenisRumputLautModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  jenisRumputLautModel.title.trim(),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  jenisRumputLautModel.deskripsi.trim(),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      jenisRumputLautModel.imagePath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton.filledTonal(
                onPressed: () {
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
                        data: jenisRumputLautModel,
                        controller: scrollController,
                      );
                    },
                  );
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.lightGreen.shade100.withOpacity(0.8),
                ),
                icon: const Icon(
                  Icons.info_outline,
                  // size: 20,
                ),
              ),
            ],
          ),
        ],

        // trailing: IconButton.filledTonal(
        //   onPressed: () {
        //     showFlexibleBottomSheet<void>(
        //       context: context,
        //       anchors: [0, 0.5, 0.8],
        //       minHeight: 0,
        //       initHeight: 0.5,
        //       isSafeArea: true,
        //       bottomSheetBorderRadius: BorderRadius.circular(16),
        //       maxHeight: 1,
        //       builder: (_, scrollController, __) {
        //         return BottomSheetWidget(
        //           description: deskripsiRumputLaut,
        //           controller: scrollController,
        //         );
        //       },
        //     );
        //   },
        //   icon: const Icon(Icons.arrow_forward_outlined),
        // ),
      ),
    );
  }
}
