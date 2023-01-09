class Barang {
  String kd_barang;
  String nama_barang;
  String satuan;
  String harga_barang;

  Barang({
    required this.kd_barang,
    required this.nama_barang,
    required this.satuan,
    required this.harga_barang,
  });

  factory Barang.fromJson(Map<String, dynamic> barang) => Barang(
      kd_barang: barang['kd_barang'],
      nama_barang: barang['nama_barang'],
      satuan: barang['satuan'],
      harga_barang: barang['harga_barang']);

  Map<String, dynamic> toJson() {
    var data = {
      'kd_barang': kd_barang,
      'nama_barang': nama_barang,
      'satuan': satuan,
      'harga_barang': harga_barang,
    };
    return data;
  }
}
