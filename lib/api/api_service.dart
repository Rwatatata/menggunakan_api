import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:menggunakan_api/model/bagianread.dart';
import 'package:menggunakan_api/model/barang.dart';

class ApiService {
  static const String baseUrl = 'http://10.0.2.2/crud_barang/api/';

  Future<BagianRead> getBagian() async {
    final response = await http.get(Uri.parse("${baseUrl}bagian/read.php"));
    if (response.statusCode == 200) {
      return BagianRead.fromJson(json.decode(response.body));
    } else {
      throw Exception('gagal');
    }
  }

  Future<http.Response> createBagian(String nama) async {
    final response = await http.post(
      Uri.parse("${baseUrl}bagian/create.php"),
      body: jsonEncode(<String, String>{
        'nama': nama,
      }),
    );
    return response;
  }

  Future<http.Response> createBarang(Barang barang) async {
    final response = await http.post(
      Uri.parse("${baseUrl}barang/create.php"),
      body: jsonEncode(barang.toJson()),
    );
    return response;
  }
}
