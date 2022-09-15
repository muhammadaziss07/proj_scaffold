import 'package:flutter/material.dart';
import 'package:proj_scaffold/beasiswa_class.dart';
import 'package:proj_scaffold/beasiswa_form.dart';
import 'package:proj_scaffold/databasehelper.dart';
import 'beasiswa_argument.dart';

class MyBeasiswaHome extends StatefulWidget {
  const MyBeasiswaHome({Key? key}) : super(key: key);

  @override
  State<MyBeasiswaHome> createState() => _MyBeasiswaHomeState();
}

class _MyBeasiswaHomeState extends State<MyBeasiswaHome> {
  // State Management
  late String beasiswaState = "awal";

  // txtPencarian
  final txtSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Monitoring State
    print(beasiswaState);

    return Scaffold(
      appBar: AppBar(
        title: Text("Form Beasiswa"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtSearchController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                labelText: "Cari Form Beasiswa",
                hintText: "Silakan cari disini...",
              ),
              onChanged: (text) {
                // Trigger Builder
                setState(() {
                  beasiswaState = "Cari";
                });
              },
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Beasiswa_class>>(
              future: beasiswaState == "refresh"
                  ? DatabaseHelper.instance.getBeasiswa()
                  : DatabaseHelper.instance.getBeasiswaKriteria(txtSearchController.text),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Beasiswa_class>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text("Form Beasiswa Masih Kosong"),
                  );
                }
                return snapshot.data!.isEmpty
                    ? Text("Belum ada data!")
                    : ListView(
                  children: snapshot.data!.map((beasiswa) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          child: ListTile(
                            leading: IconButton(
                              onPressed: () {
                                final _beasiswaArguments = BeasiswaArgumen(
                                    beasiswa.id,
                                    beasiswa.nama_beasiswa,

                                    "edit"
                                );

                                Navigator.pushNamed(
                                  context,
                                  "/AgendaForm",
                                  arguments: _beasiswaArguments,
                                ).whenComplete(() {
                                  setState(() {
                                    beasiswaState = "refresh";
                                  });
                                });
                              }, icon: Icon(Icons.edit),
                            ),
                            title: Text(beasiswa.nama_beasiswa),
                            trailing: IconButton(
                              onPressed: () {
                                // Konfirmasi Hapus Data
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Konfirmasi"),
                                        content: Text("Yakin Anda Ingi Menghapus Data " + beasiswa.nama_beasiswa + "?"),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Batal"),
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              // Button Konfirmasi
                                              final _id = beasiswa.id;
                                              final _nama_beasiswa = beasiswa.nama_beasiswa;
                                              print(_id);
                                              print(_nama_beasiswa);

                                              // Proses Hapus
                                              await DatabaseHelper.instance.deleteBeasiswa(_id);

                                              // Refresh
                                              setState(() {
                                                beasiswaState = "Berhasil";

                                                // Tutup Modal
                                                Navigator.of(context).pop();
                                              });
                                            },
                                            child: Text("Hapus"),
                                          ),
                                        ],
                                      );
                                    }
                                );
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          final  beasiswaArguments = BeasiswaArgumen(0, "", "simpan");
          Navigator.pushNamed(
            context,
            "/AgendaForm",
            arguments: beasiswaArguments,
          ).whenComplete(() {
            setState(() {
              // Monitoring State
              beasiswaState = "refresh";
              print(beasiswaState);
            });
          });
        },
        child: Icon(Icons.create),
      ),
    );
  }
}
