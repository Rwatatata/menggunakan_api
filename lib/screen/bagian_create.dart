import 'package:flutter/material.dart';
import 'package:menggunakan_api/api/api_service.dart';
import 'package:menggunakan_api/model/barang.dart';

class BagianCreate extends StatefulWidget {
  static const routeName = '/bagian_create';
  const BagianCreate({Key? key}) : super(key: key);

  @override
  State<BagianCreate> createState() => _BagianCreateState();
}

class _BagianCreateState extends State<BagianCreate> {
  String _nama = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Membaca API Online'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Tuliskan nama bagian baru',
                  labelText: 'Input Bagian',
                ),
                onChanged: (String value) {
                  setState(() {
                    _nama = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  ApiService apiService = ApiService();
                  apiService.createBagian(_nama);

                  Barang barang = Barang(
                      kd_barang: 'K01',
                      nama_barang: 'INDOMIE GORENG',
                      satuan: 'PCS',
                      harga_barang: '2500');
                  apiService.createBarang(barang);
                },
              )
            ],
          ),
        ));
  }
}
