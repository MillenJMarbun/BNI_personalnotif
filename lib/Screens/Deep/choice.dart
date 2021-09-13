class User {
  int userId;
  String choice;

  User({this.userId, this.choice});

  static List<User> getUsers() {
    return <User>[
      User(userId: 1, choice: "Bank Garansi"),
      User(userId: 2, choice: "Pengembangan OTR Mobile Remittance"),
      User(userId: 3, choice: "Pinjaman Sindakasi untuk perusahaan besar"),
      User(userId: 4, choice: "Transaksi Ekspor Impor"),
    ];
  }
}