class News {
  final String title;
  final String subtitle;
  final String content;
  final String category;
  final String time;
  final String author;
  final String image;

  News({
    this.author,
    this.content,
    this.category,

    this.image,
    this.subtitle,
    this.time,
    this.title,
  });
}


List<News> recentList = [
  News(
    author: "Millen M",
    category: "Business",

    time: "4 hours ago",
    title:
        "BNI Raih Consulate Award 2020",
    image:
        "https://www.bni.co.id/Portals/1/xNews/uploads/2021/6/4/KV_CONSULATE_AWARD_2021.jpeg",
    subtitle:
        "Menjelang peringatan Hari Ulang Tahun (HUT) ke-75, PT Bank Negara Indonesia (Persero) Tbk atau BNI memperoleh kado penghargaan dari Konsul Jenderal RI untuk Hong Kong dan Macau dalam ajang Consulate Award 2020",
    content:
        "Menjelang peringatan Hari Ulang Tahun (HUT) ke-75, PT Bank Negara Indonesia (Persero) Tbk atau BNI memperoleh kado penghargaan dari Konsul Jenderal RI untuk Hong Kong dan Macau dalam ajang Consulate Award 2020. Anugerah ini diberikan karena BNI Hong Kong, sebagai salah satu kantor cabang perseroan di luar negeri, sukses menjadi kepanjangan tangan BNI dalam mendorong ekspor dari Indonesia.\n\n BNI Kantor Cabang Hong Kong mendapatkan appresiasi atas konsistensinya mendukung ekspor produk-produk Indonesia ke Hong Kong dan China. Penghargaan ini disampaikan oleh Konsul Jenderal RI untuk Hong Kong dan Macau, Bapak Ricky Suhendar dalam ajang Consulate Award 2020 yang diselenggarakan di Hong Kong, tanggal 4 Juni 2021,” ujar Direktur Treasury dan International BNI Henry Panjaitan di Jakarta",
  ),
  News(
    author: "Joshua M",
    category: "Finance",

    time: "10 hours ago",
    title:
        "Himbara Tunda Penyesuaian Biaya ATM Link",
    image:
        "https://www.bni.co.id/Portals/1/xNews/uploads/2021/6/1/KV_ATM_LINK.jpeg",
    subtitle:
        "Himpunan Bank Milik Negara (Himbara) dan PT Jalin Pembayaran Nusantara (Jalin) sepakat untuk menjadwalkan kembali implementasi penyesuaian biaya transaksi",
    content:
        "Himpunan Bank Milik Negara (Himbara) dan PT Jalin Pembayaran Nusantara (Jalin) sepakat untuk menjadwalkan kembali implementasi penyesuaian biaya transaksi cek saldo dan tarik tunai yang dilakukan di mesin – mesin ATM Merah Putih atau ATM dengan tampilan ATM Link. Dengan demikian, penyesuaian tarif yang pada awalnya akan diimplementasikan pada 1 Juni 2021 menjadi ditunda. Penundaan ini diharapkan dapat meningkatkan sosialisasi kepada masyarakat lebih luas lagi. ",
  ),
  News(
    author: "Shawn M",
    category: "Lifestyle",
    time: "12 Hours ago",
    title:
        "BNI Jadi Pendukung Resmi Bulu Tangkis Nasional",
    image:
        "https://www.bni.co.id/Portals/1/xNews/uploads/2021/5/25/KV_KERJASAMA_PBSI_2021.jpeg",
    subtitle:
        "PT Bank Negara Indonesia (Persero) Tbk atau BNI resmi menjadi pendukung pengembangan dan pembinaan cabang olahraga yang sangat memasyarakat di Indonesia dan kerap menjadi sumber prestasi di dunia internasional",
    content:
        "PT Bank Negara Indonesia (Persero) Tbk atau BNI resmi menjadi pendukung pengembangan dan pembinaan cabang olahraga yang sangat memasyarakat di Indonesia dan kerap menjadi sumber prestasi di dunia internasional, yaitu bulu tangkis. Melalui dukungannya ini, BNI berkomitmen turut memastikan program pembinaan atlet – atlet muda bulu tangkis nasional akan terus berjalan \n \n Kami memiliki harapan besar untuk turut memajukan dunia olahraga. Dimana bulu tangkis merupakan salah satu cabang olahraga yang populer di Indonesia. Perjuangan para atlet bulu tangkis nasional dan di ajang internasional, kerap menjadi pengungkit semangat bagi para atlet muda untuk turut berprestasi. Pada saat yang sama, PP PBSI memang sedang mencari partner yang bersedia turut mendukung kemajuan bulu tangkis nasional,” ujar Direktur Utama BNI Royke Tumilaar di Jakarta",
  ),
  News(
    author: "Millen M",
    category: "Banking",
    time: "22 Hours ago",
    title: "Tak Hanya Gratis, Transaksi di Mobile Banking ini Berhadiah",
    image: "https://www.bni.co.id/Portals/1/xNews/uploads/2021/5/23/KV_LIATIN_MBANK.jpeg",
    subtitle:
        "Pandemi merubah kebiasaan orang menjadi semakin digital. Kebutuhan terhadap transaksi digital juga semakin besar",
    content:
        "Pandemi merubah kebiasaan orang menjadi semakin digital. Kebutuhan terhadap transaksi digital juga semakin besar, termasuk transaksi perbankan. Kondisi itu tercatat di BNI, dimana transaksi perbankan secara digital meningkat 50% \n \nJika dilihat transaksi Desember 2020, transaksi digital dari nasabah BNI khususnya di aplikasi BNI Mobile Banking mengalami peningkatan hampir 50% dari transaksi Desember 2019, \n Data tersebut, katanya, menunjukkan bahwa masyarakat sudah mulai beralih dalam bertransaksi, yakni dari transaksi secara fisik di outlet menjadi ke channel elektronik atau digital. Dalam hal ini nasabah menggunakan aplikasi BNI Mobile Banking.",
  ),
  News(
    author: "Joshua S",
    category: "News",
    time: "8 Hours ago",
    title:
        "Heboh! Jerome Polin Buka Rekening di Bank BUMN Cabang Tokyo",
    image: "https://www.bni.co.id/Portals/1/xNews/uploads/2021/5/18/KV_JEROME.jpeg",
    subtitle:
        "Youtuber asal Indonesia Jerome Polin Sijabat atau yang akrab dengan sebutan Jerome Polin berkesempatan jalan-jalan ke kantor BNI Tokyo, Jepang.",
    content:
        "Youtuber asal Indonesia Jerome Polin Sijabat atau yang akrab dengan sebutan Jerome Polin berkesempatan jalan-jalan ke kantor BNI Tokyo, Jepang. Di BNI Tokyo, Jerome akhirnya mengetahui fakta menarik bahwa PT Bank Negara Indonesia (Persero) Tbk (BNI) merupakan satu-satunya bank dari Indonesia yang ada di negeri Sakura tersebut. \n \n Jerome langsung mencoba membuat Remittance Card dan membuka BNI Taplus di Kantor BNI Tokyo tersebut.  “Wah akhirnya udah jadi beneran (BNI Taplus dan Remittance Card). Yeay dapet juga kartunya. Kita langsung coba yuk,” ungkap Jerome. ",
  ),
  News(
    author: "Steve C",
    category: "Business",

    time: "4 hours ago",
    title:
    "BNI Raih Consulate Award 2020",
    image:
    "https://www.bni.co.id/Portals/1/xNews/uploads/2021/6/4/KV_CONSULATE_AWARD_2021.jpeg",
    subtitle:
    "Menjelang peringatan Hari Ulang Tahun (HUT) ke-75, PT Bank Negara Indonesia (Persero) Tbk atau BNI memperoleh kado penghargaan dari Konsul Jenderal RI untuk Hong Kong dan Macau dalam ajang Consulate Award 2020",
    content:
    "Menjelang peringatan Hari Ulang Tahun (HUT) ke-75, PT Bank Negara Indonesia (Persero) Tbk atau BNI memperoleh kado penghargaan dari Konsul Jenderal RI untuk Hong Kong dan Macau dalam ajang Consulate Award 2020. Anugerah ini diberikan karena BNI Hong Kong, sebagai salah satu kantor cabang perseroan di luar negeri, sukses menjadi kepanjangan tangan BNI dalam mendorong ekspor dari Indonesia.\n\n BNI Kantor Cabang Hong Kong mendapatkan appresiasi atas konsistensinya mendukung ekspor produk-produk Indonesia ke Hong Kong dan China. Penghargaan ini disampaikan oleh Konsul Jenderal RI untuk Hong Kong dan Macau, Bapak Ricky Suhendar dalam ajang Consulate Award 2020 yang diselenggarakan di Hong Kong, tanggal 4 Juni 2021,” ujar Direktur Treasury dan International BNI Henry Panjaitan di Jakarta",
  ),
];
