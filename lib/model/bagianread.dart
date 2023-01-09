import 'package:menggunakan_api/model/bagian.dart';

class BagianRead {
  BagianRead({required this.success, required this.bagians});

  bool success;
  List<Bagian> bagians;

  factory BagianRead.fromJson(Map<String, dynamic> json) => BagianRead(
      success: json['success'],
      bagians: List<Bagian>.from(json['data'].map((x) => Bagian.fromJson(x))));
}
