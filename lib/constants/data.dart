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

  static final apiUrl =
      Platform.isIOS ? "http://localhost:5000" : 'http://10.0.2.2:5000';

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
    Alga merah merupakan kelompok rumput laut dengan jumlah spesies paling banyak, yaitu sekitar 6000 jenis (Algaebase.org). Salah satu jenis alga merah yang telah banyak dimanfaatkan ialah Kappaphycus alvarezii. Rumput laut merah mempunyai kenampakan warna talus yang bervariasi. 
    
    Warna talus yang bervariasi disebabkan adanya komposisi pigmen yang terdiri dari klorofil a, klorofil d, dan fikobiliprotein (R-fikosianin, allofikosianin serta fikoeritrin).  
    
    Fikoeritrin merupakan pigmen dominan pada alga merah. Pigmen tersebut memberikan kenampakan warna merah pada alga. Alga merah mempunyai kemampuan adaptasi kromatik, yaitu penyesuaian warna talus berdasarkan kualitas pencahayaan yang diterima.
    """,
      imagePath: 'assets/images/ice-ice.jpg',
    ),
    JenisRumputLautModel(
      title: "Kerak Bryzoan",
      deskripsi: """
    Jenis rumput laut dari kelas Chlorophyceae umumnya berwarna hijau dengan bentuk talus berupa lembaran, batangan atau bulatan yang bersifat lunak, keras atau siphonous, terdiri atas uniseluler atau multiseluler. Caulerpa sp. merupakan salah satu jenis rumput laut dari kelas Chlorophyceae. Caulerpa sp. merupakan rumput laut yang sering dikonsumsi sebagai sayuran dan lalapan di daerah tropikal Pasifik terutama di Filipina dan Indonesia. 
    
    Caulerpa sp. mempunyai kandungan gizi yang cukup tinggi, antara lain protein (10,7%) dan karbohidrat (27,2%), sedangkan lemaknya bersifat fluktuatif yaitu sekitar 0,3%, kandungan air antara 16–20%, serta kandungan serat kasar berkisar antara 4,4–15,5%. Caulerpa sp. merupakan salah satu jenis alga yang mempunyai kesamaan komposisi pigmen dengan tumbuhan tingkat tinggi. 
    
    Jenis rumput laut yang termasuk dalam kelompok alga hijau mempunyai pigmen fotosintetik yaitu klorofil a dan b dengan jumlah yang melimpah. Selain pigmen utama yang berupa klorofil, alga hijau juga mempunyai beberapa pigmen asesoris, yaitu karotenoid. Karotenoid utama pada alga hijau diantaranya β-karoten, lutein, v iolaxanthin, antheraxanthin, zeaxanthin, dan neoxanthin.
    """,
      imagePath: 'assets/images/kerak_bryzoan.jpeg',
    ),
    JenisRumputLautModel(
      title: "Bulu Kucing",
      deskripsi: """
    Alga coklat mempunyai bentuk yang bervariasi tetapi hampir sebagian besar berwarna coklat atau pirang. Warna tersebut tidak berubah walaupun alga ini telah dikeringkan. Alga coklat mengandung beberapa pigmen fotosintetik yaitu karoten, fukoxantin, klorofil a, dan klorofil c. Sargassum sp. merupakan rumput laut yang termasuk dalam kelas Phaeophyceae. Di Indonesia, Sargassum sp. memiliki sebaran yang luas dan bervariasi. 
    
    Jenis rumput laut tersebut termasuk tumbuhan yang dominan dan terdistribusi di seluruh perairan Indonesia, antara lain di Selat Sunda, Perairan Bangka Belitung, Karimunjawa, Pantai Selatan Pulau Jawa, Pantai Bali, Pantai Lombok, Kupang, Kalimantan Timur, Sulawesi Tenggara, Sulawesi Utara, Ternate, Ambon, Teluk Lampung, dan Perairan Natuna. Sargassum sp. mempunyai banyak senyawa yang dapat dimanfaatkan untuk berbagai keperluan. 
    
    Kandungan senyawa kimia utama Sargassum sp. antara lain, alginat, protein, vitamin C, tanin, yodium, dan fenol (obat gondok, anti bakteri dan tumor). Kandungan koloid alginat dari Sargassum sp. sangat penting, karena digunakan cukup luas dalam industri, yaitu sebagai bahan pengental, pensuspensi, penstabil, pembentuk film, gel, disintegrating agent, dan bahan pengemulsi. Sehubungan dengan fungsi tersebut, maka alginat banyak dibutuhkan untuk berbagai industri, seperti farmasi (5%), tekstil (50%), makanan dan minuman (30%), kertas (6%), dan industri lainnya (9%). Sargassum sp. juga mengandung pigmen fotosintetik.""",
      imagePath: 'assets/images/bulu_kucing.png',
    ),
    JenisRumputLautModel(
      title: "Rumput Laut Sehat",
      deskripsi: """
    Rumput laut sehat tidak menunjukkan tanda-tanda gangguan seperti Ice-Ice, Kerak Bryozoan, atau Bulu Kucing. Ini terlihat dari warna hijau cerah, tekstur baik, dan pertumbuhan merata tanpa adanya struktur kristal es atau organisme yang melekat pada permukaannya. Monitoring dan pemeliharaan rutin penting untuk mencegah gangguan pada rumput laut.
    """,
      imagePath: 'assets/images/rumput_sehat.jpg',
    ),
  ];
}
