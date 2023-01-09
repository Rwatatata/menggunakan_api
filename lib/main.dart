import 'package:flutter/material.dart';
import 'package:menggunakan_api/screen/bagian_create.dart';
import 'package:menggunakan_api/screen/bagian_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: BagianList.routeName,
      routes: {
        BagianList.routeName: (context) => const BagianList(),
        BagianCreate.routeName: (context) => const BagianCreate(),
      },
    );
  }
}
