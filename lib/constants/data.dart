import 'dart:io';

import '../models/jenis_rumput_laut.dart';
import '../models/onboarding.dart';

class DataConstants {
  DataConstants._();

  static const listOnBoarding = [
    OnBoardingModel(
      title: 'Pemantauan Kesehatan Rumput Laut',
      description:
          'Aplikasi Pintar untuk Mendeteksi dan Mencegah Penyakit Ice-Ice, Kerak Bryozoan, dan Bulu Kucing pada Rumput Laut. Lindungi Keseimbangan Ekosistem Laut!',
      imagePath: 'assets/images/slide_1.png',
    ),
    OnBoardingModel(
      title: 'Rumput Laut Bebas Gangguan',
      description:
          'Lindungi Rumput Laut dari Ancaman Ice-Ice, Kerak Bryozoan, dan Bulu Kucing. Aplikasi Pendeteksi Penyakit yang Mudah Digunakan untuk Menjaga Kesehatan Ekosistem Laut.',
      imagePath: 'assets/images/slide_2.png',
    ),
    OnBoardingModel(
      title: 'Start now!',
      description:
          'Bergabunglah dengan Kami dalam Menjaga Kesehatan Rumput Laut! Aplikasi Cerdas yang Mengidentifikasi dan Mencegah Ice-Ice, Kerak Bryozoan, dan Bulu Kucing. Konservasi Laut dalam Genggaman Tangan Anda.',
      imagePath: 'assets/images/slide_3.png',
    ),
  ];

  static var apiUrl =
      Platform.isIOS ? "http://localhost:8080" : 'http://10.0.2.2:8080';

  static const listSolusi = {
    "penyakit ice-ice":
        "Upaya pencegahan penyakit ice-ice melalui desinfeksi bibit seperti: pencelupan pada larutan PK (potassium permanganat) 20 ppm, atau perendaman dengan bahan alami yang mengandung senyawa antimikroba seperti ekstrak daun ketapang, mangrove Sonneratia alba, dan pemberian sabun deterjen pada tali yang akan dipakai untuk budidaya rumput laut.",
    "penyakit kerak bryzoan":
        "Untuk menanggulangi dan mencegah terjadinya hama penyakit kerak bryzoan pada rumput laut yakni dengan memberi jumlah pelampung pada tali rumput laut yang tidak berlebihan yakni dengan jarak 1 meter, agar tali dan rumput laut dapat mengapung dengan sempurna dan tidak terlalu tergenang, pemilihan bibit rumput laut yang berkualitas, serta pengontrolan pada rumput laut yang dibudidayakan tiap 2 kali dalam seminggu.",
    "penyakit bulu kucing":
        "Untuk menanggulangi penyakit tersebut dapat dilakukan dengan cara memberi deterjen pada rumput laut. Memilih lokasi kegiatan budidaya yang jauh dari sumber pencemaran. Cara lain dalam mencegah penyakit “Bulu Kucing” ini dengan rajin melakukan pengontrolan pada kualitas air di lokasi budidaya.",
    "rumput laut sehat":
        "Rumput laut sehat tidak menunjukkan tanda-tanda gangguan seperti Ice-Ice, Kerak Bryozoan, atau Bulu Kucing. Ini terlihat dari warna hijau cerah, tekstur baik, dan pertumbuhan merata tanpa adanya struktur kristal es atau organisme yang melekat pada permukaannya. Monitoring dan pemeliharaan rutin penting untuk mencegah gangguan pada rumput laut.",
  };

  static const deskripsiRumputLaut = JenisRumputLautModel(
    title: "Deskripsi Rumput Laut",
    deskripsi: """
    Seaweed atau rumput laut, secara ilmiah dikenal dengan istilah algae atau ganggang. Rumput laut merupakan tumbuhan berklorofil dan digolongkan sebagai tanaman tingkat rendah yang tidak memiliki akar, batang maupun daun sejati, melainkan hanya menyerupai batang, yang disebut thallus.
    
    Rumput laut ini memiliki ciri morfologi yaitu thallus yang bercabang-cabang berbentuk silindris atau pipih, percabangannya tidak teratur dan kasar. Ujungnya runcing atau tumpul berwarna coklat ungu atau hijau kuning. Memiliki spina tidak teratur menutupi thallus dan cabang- cabangnya. Permukaan licin.
    
    Budidaya rumput laut memiliki peranan penting dalam usaha meningkatkan produksi perikanan untuk memenuhi kebutuhan pangan dan gizi dalam negeri, memperluas kesempatan kerja, meningkatkan pendapatan dan kesejahteraan nelayan dan pembudidaya ikan serta menjaga kelestarian sumber hayati perairan.
""",
    imagePath: 'assets/images/rumput_sehat.jpg',
  );

  static const listJenisRumputlaut = [
    JenisRumputLautModel(
      title: "Ice-Ice",
      deskripsi: """
Ice-ice merupakan penyakit yang banyak menyerang rumput laut. Penyakit ini ditandai dengan timbulnya bintik/bercak-bercak merah pada sebagian thallus yang lama kelamaan menjadi kuning pucat dan akhirnya berangsur-angsur menjadi putih. Thallus menjadi rapuh dan mudah putus.

Ice-ice adalah penyakit yang banyak menyerang rumput laut kelompok karaginofit termasuk K. alvarezii. Pertama kali dilaporkan pada tahun 1974, ketika penyakit ini menyerang hampir seluruh rumput laut yang dibudidaya di negara Filipina.

Penyakit ini ditandai dengan timbulnya beberapa gejala seperti:

1. Pertumbuhan yang lambat,
2. Timbul bintik atau bercak pada sebagian thallus,
3. Thallus tampak kekuningan yang secara perlahan berangsur menjadi putih dan mudah terputus,
4. Rumput laut berlendir.
""",
      imagePath: 'assets/images/ice-ice.jpg',
    ),
    JenisRumputLautModel(
      title: "Kerak Bryzoan",
      deskripsi: """
Penyakit kerak bryzoan adalah butiran-butiran kecil yang membentuk gumpalan pada tanaman rumput laut, berwarna hitam dan ada juga berwarna coklat.

Penyakit ini disebabkan karena serangan hama seperti Membranipora spp. Gejala yang ditimbulkan adalah pada batang rumput laut terlihat seperti kerak yang menempel berwarna hitam.
""",
      imagePath: 'assets/images/kerak_bryzoan.jpeg',
    ),
    JenisRumputLautModel(
      title: "Bulu Kucing",
      deskripsi: """
Penyakit Bulu kucing merupakan istilah umum yang digunakan oleh pembudidaya untuk menyebutkan jenis penyakit tersebut.  Bulu Kucing merupakan jenis penyakit atau hama yang hidupnya menempel pada bagian thallus rumput, Epifit tersebut mengambil nutrisi dari tanaman rumput laut.

Bulu kucing yang menempel pada rumput laut kerap berwarna coklat dan dan mengambil banyak nutrsi padarumput laut, sehingga banyak merugikan petani.
""",
      imagePath: 'assets/images/bulu_kucing.png',
    ),
    JenisRumputLautModel(
      title: "Rumput Laut Sehat",
      deskripsi: """
Rumput laut yang sehat, umumnya memliki warna yang cerah, bebas dari kotoran atau lumut dan ornanisme penempel lainnya.

Selain itu rumput laut yang sehat juga merupakan bibit yang segar tampak dari thallusnya dengan warna yang cerah dan Thallus berbentuk silindris atau gepeng dengan percabangan, mulai dari yang sederhana sampai pada yang rumit dan rimbun dan juga pertumbuhan yang optimal lentur dan tidak mudah patah.
""",
      imagePath: 'assets/images/rumput_sehat.jpg',
    ),
  ];
}
