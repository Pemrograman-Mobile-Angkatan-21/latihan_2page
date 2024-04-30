import 'package:flutter/material.dart';
import 'package:project2/widget2.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  static String routeName = '/widget1';

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController txtNpm = TextEditingController();
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtMatakuliah = TextEditingController();
  TextEditingController txtNilai = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Widget Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   "/img/deris_icon.png",
                    //   height: 150,
                    //   width: 150,
                    // ),
                    Image.network(
                        "https://ublapps.ubl.ac.id/assets/images/Logo-ubl2.png"),
                    TextField(
                      controller: txtNpm,
                      decoration:
                          const InputDecoration(hintText: 'Masukan Npm :'),
                    ),
                    TextField(
                      controller: txtNama,
                      decoration:
                          const InputDecoration(hintText: 'Masukan Nama :'),
                    ),
                    TextField(
                      controller: txtMatakuliah,
                      decoration: const InputDecoration(
                          hintText: 'Masukan Matakuliah :'),
                    ),
                    TextField(
                      controller: txtNilai,
                      decoration: const InputDecoration(hintText: 'Nilai :'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Widget2.routeName,
                              arguments: {
                                "npm": txtNpm.text,
                                "nama": txtNama.text,
                                "matakuliah": txtMatakuliah.text,
                                "nilai": txtNilai.text
                              });
                        },
                        child: const Text('Submit')),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ))
          ],
        ));
  }
}
