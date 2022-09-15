import 'dart:math';

import 'package:flutter/material.dart';
import 'package:proj_scaffold/beasiswa.dart';
import 'package:proj_scaffold/beasiswa_class.dart';
import 'package:proj_scaffold/databasehelper.dart';

import 'beasiswa_argument.dart';

class BeasiswaForm extends StatefulWidget {
  const BeasiswaForm({Key? key}) : super(key: key);

  @override
  State<BeasiswaForm> createState() => _BeasiswaFormState();
}

class _BeasiswaFormState extends State<BeasiswaForm> {
  final _txtBeasiswaController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // Create Widget That Extraxts the arguments
    final _beasiswaArguments = ModalRoute.of(context)!.settings.arguments as BeasiswaArgumen;

    // get Ke Form
    final String _kondisi = _beasiswaArguments.kondisi;

    // Kondisi IF
    (_kondisi == "edit") ? (
        _txtBeasiswaController.text = _beasiswaArguments.namaBeasiswa
    ) : (
        _txtBeasiswaController.text = ""
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Beasiswa"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              controller: _txtBeasiswaController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_month),
                  labelText: "Deskripsi Beasiswa",
                  hintText: "Deskripsi Beasiswa"),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(onPressed: () async {

                // Validasi data kosong
                if (_txtBeasiswaController.text == '') {

                  //  Proses Validasi data
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Validasi data kosong"),
                          content: Text("Harap isi datanya!"),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK")
                            )
                          ],
                        );
                      }
                  );
                } else {

                  // Save Data Agenda
                  Random random = new Random();
                  int randomNumber = random.nextInt(100);
                  final int id = _beasiswaArguments.id;
                  final String namaBeasiswa = _txtBeasiswaController.text;

                  (_kondisi == "edit")
                      ? (DatabaseHelper.instance.updateBeasiswa(Beasiswa_class(
                      id : id, nama_beasiswa: _txtBeasiswaController.text
                  )))
                      : await DatabaseHelper.instance.addBeasiswa(
                      Beasiswa_class(
                          id: randomNumber,
                          nama_beasiswa: namaBeasiswa
                      )
                  );

                  // Kembali Ke Form Utama
                  Navigator.of(context).pop();
                }
              },
                child: const Text("Simpan"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
