import 'package:flutter/material.dart';

class Widget2 extends StatefulWidget {
  const Widget2({super.key});
  static String routeName = '/widget2';

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  String npm = '';
  String nama = '';
  String matakuliah = '';
  double nilai = 0.0;
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    npm = data!['npm'];
    nama = data['nama'];
    matakuliah = data['matakuliah'];
    nilai = double.parse(data['nilai']);

    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Npm : $npm'),
          Text('Nama : $nama'),
          Text('Matakuliah : $matakuliah'),
          Text('Nilai : $nilai')
        ],
      ),
    ));
  }
}
