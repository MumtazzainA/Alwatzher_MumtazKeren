import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Kurang Tidur Sebabkan Demensia, Kok Bisa?',
      subtitle:
          'Mengetahui alasan kenapa kurang tidur sebabkan demensia sangat penting agar bisa melakukan tindakan pencegahan yang diperlukan',
      body:
          'Menurut penelitian yang terbit pada jurnal Nature Communication di tahun 2021, kurang tidur bisa menyebabkan demensia. Hasil penelitian ini menunjukkan bahwa 521 partisipan dari 8,000 partisipan yang berusia rata-rata 77 tahun didiagnosis dengan demensia. Penelitian ini dilakukan selama 31 tahun, mulai dari tahun 1985 hingga 2016, dan melibatkan banyak aspek, termasuk berapa lama waktu tidur di malam hari. Partisipan yang didiagnosis dengan demensia rata-rata tidur selama kurang dari 6 jam setiap malam. Namun, penelitian lebih lanjut diperlukan untuk mengetahui kaitan antara kurang tidur dan demensia. Sedangkan menurut Sleep Foundation, beberapa penelitian menunjukkan bahwa kurang tidur bisa meningkatkan kadar plak beta-amiloid di dalam otak. Penumpukan plak ini akan merusak sel-sel otak dan bisa jadi penyebab Alzheimer, yang merupakan salah satu jenis demensia yang paling sering ditemui.',
      author: 'Ria Apriani',
      authorImageUrl:
          'https://asset.kompas.com/crops/DIZVMjZPQ6P1VrqvkbPB9Exiq5U=/37x0:1113x717/750x500/data/photo/2023/05/02/6450d2d1c0638.jpg',
      category: 'Causes',
      views: 1204,
      imageUrl:
          'https://asset.kompas.com/crops/DIZVMjZPQ6P1VrqvkbPB9Exiq5U=/37x0:1113x717/750x500/data/photo/2023/05/02/6450d2d1c0638.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          'Studi: Tanda Pertama Alzheimer Ternyata Muncul di Mata',
      subtitle:
          'Ilustrasi Pasien Alzheimer',
      body:
          'Dr Christine Greer, dokter mata dan direktur pendidikan kedokteran di Institute for Neurodegenerative Diseases di Boca Raton, Florida, mengungkapkan bahwa mata dapat menunjukkan kondisi di dalam otak. “Anda bisa melihat langsung ke sistem saraf dengan melihat ke bagian belakang mata, ke arah saraf optik dan retina,” ujarnya kepada CNN Health. Karena bisa menunjukkan keadaan otak, para peneliti kemudian berusaha mencari tahu cara mendiagnosis penyakit Alzheimer melalui mata bahkan sebelum gejalanya terlihat. Menurut Dr Richard Isaacson, seorang ahli saraf pencegahan Alzheimer di Institute for Neurodegenerative Diseases, Alzheimer sudah muncul di otak bertahun-tahun sebelum pasien mulai kehilangan ingatan. Karena itu, semakin cepat dokter dapat mengidentifikasi penyakit ini, maka semakin cepat penderita bisa menjalankan gaya hidup sehat dan mengendalikan risiko tekanan darah tinggi, kolesterol tinggi, dan diabetes.',
      author: 'Erwina Rachmi',
      authorImageUrl:
          'https://asset.kompas.com/crops/pOujyVkEOi_Omb23RJRcPs2sP10=/0x0:626x417/750x500/data/photo/2023/01/19/63c8c39b4aebc.jpeg',
      category: 'Causes',
      views: 1204,
      imageUrl:
          'https://asset.kompas.com/crops/pOujyVkEOi_Omb23RJRcPs2sP10=/0x0:626x417/750x500/data/photo/2023/01/19/63c8c39b4aebc.jpeg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
          'Bukan Alzheimer, Chris Hemsworth Cuti Syuting karena Rindu Keluarga',
      subtitle:
          'Chris Hemsworth',
      body:
          'Aktor Hollywood Chris Hemsworth pada tahun 2022 sempat mengumumkan niatannya berhenti berakting setelah didiagnosa berisiko tinggi terkena penyakit Alzheimer. Berdasarkan pemeriksaan, bintang Marvel itu memiliki dua salinan gen APOE4, masing-masing dari orangtuanya, yang rentan menyebabkan penyakit tersebut. Terlebih lagi, kakeknya telah didiagnosis penyakit yang sama sehingga menambah kekhawatirannya. "Saya sekarang tinggal menyelesaikan kontrak untuk dilakukan. Setelah ini saya akan pulang dan memiliki banyak waktu istirahat bersama anak-anak dan istri," katanya dalam sebuah wawancara di tahun lalu. Namun dalam sebuah wawancara di tahun 2023 di Entertainment Tonight, Hemsworth mengklarifikasi alasan terkuat dirinya tidak mengambil pekerjaan baru selama beberapa bulan terakhir bukan karena kesehatan, tetapi rindu keluarga. "Semuanya menjadi sedikit tidak proporsional. Saya ingin cuti setelah saya bekerja lebih dari 10 tahun. Saya punya tiga orang anak dan ingin menghabiskan banyak waktu bersama keluarga," ujarnya.',
      author: 'Dinno Baskoro',
      authorImageUrl:
          'https://asset.kompas.com/crops/OzFtm6pXDmiqxoK6pD8DAO4Kv0w=/0x0:779x519/1200x800/data/photo/2023/06/17/648d822096606.png',
      category: 'Abroad',
      views: 1204,
      imageUrl:
          'https://asset.kompas.com/crops/OzFtm6pXDmiqxoK6pD8DAO4Kv0w=/0x0:779x519/1200x800/data/photo/2023/06/17/648d822096606.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: '3 Cara Menangani Depresi pada Orang dengan Gangguan Sistem Saraf',
      subtitle:
          'Depresi',
      body:
          'Depresi dapat terjadi karena banyak hal dan masing-masing orang memiliki penyebab yang berbeda-beda. Misalnya, beberapa orang dengan gangguan neurologis yang menyerang sistem saraf, seperti multiple sclerosis, epilepsi, cedera otak traumatis, penyakit alzheimer, atau stroke, kerap kali mengalami depresi. Sebuah penelitian di Denmark pada tahun 2016 terhadap para penderita stroke menemukan bahwa lebih dari separuhnya mengalami depresi dalam tiga bulan pertama, dan 25 persen didiagnosis mengalami depresi dua tahun kemudian. Statistik serupa juga telah dilaporkan untuk kondisi neurologis lainnya.',
      author: 'Ryan Sara',
      authorImageUrl:
          'https://asset.kompas.com/crops/ZvlaDjMMLPwlVTY0X2nmgTrFJQg=/0x0:1000x667/1200x800/data/photo/2023/02/06/63e0f08ae8c30.jpg',
      category: 'Handle',
      views: 1204,
      imageUrl:
          'https://asset.kompas.com/crops/ZvlaDjMMLPwlVTY0X2nmgTrFJQg=/0x0:1000x667/1200x800/data/photo/2023/02/06/63e0f08ae8c30.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
          '5 Penyebab Demensia Sesuai Jenisnya, Tak Hanya Usia',
      subtitle:
          'Penyebab demensia akan tergantung dari jenis demensia yang dialami',
      body:
          'Penyakit Alzheimer: Ini adalah penyebab paling umum dari demensia. Kerusakan otak terkait Alzheimer terjadi akibat pembentukan plak amyloid-beta dan benang neurofibrillary dalam otak. Penyakit Vaskular: Jenis demensia ini disebabkan oleh gangguan aliran darah ke otak, yang dapat menyebabkan kerusakan pada area-area tertentu dalam otak. Paling sering terjadi akibat stroke atau pembuluh darah yang tersumbat atau pecah. Penyakit Lewy Bodies: Demensia jenis ini disebabkan oleh akumulasi protein yang disebut Lewy bodies dalam otak. Gejala termasuk perubahan kognitif, gangguan visual, dan gejala parkinsonisme. Gangguan Parkinson: Beberapa orang dengan penyakit Parkinson yang parah dapat mengembangkan gangguan kognitif yang berhubungan dengan demensia, yang dikenal sebagai demensia Parkinson. Faktor gaya hidup: Beberapa faktor gaya hidup juga dapat meningkatkan risiko demensia. Misalnya, merokok, konsumsi alkohol yang berlebihan, kurangnya aktivitas fisik, pola makan yang tidak sehat, obesitas, dan tekanan darah tinggi dapat meningkatkan risiko demensia.',
      author: 'Ria Apriani',
      authorImageUrl:
          'https://asset.kompas.com/crops/kwbTVeDYXxx0zHkADDne8CHucm0=/0x108:5041x3469/750x500/data/photo/2022/07/03/62c0d721dfbba.jpg',
      category: 'Health',
      views: 1204,
      imageUrl:
          'https://asset.kompas.com/crops/kwbTVeDYXxx0zHkADDne8CHucm0=/0x108:5041x3469/750x500/data/photo/2022/07/03/62c0d721dfbba.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
