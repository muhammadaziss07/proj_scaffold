// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:proj_scaffold/Portofolio.dart';
import 'package:proj_scaffold/account.dart';
import 'package:proj_scaffold/akhlak.dart';
import 'package:proj_scaffold/bajaj.dart';
import 'package:proj_scaffold/beasiswa.dart';
// import 'package:proj_scaffold/beasiswa_class.dart';
import 'package:proj_scaffold/beasiswa_form.dart';
// import 'package:proj_scaffold/databasehelper.dart';
import 'beasiswa_home.dart';
import 'beasiswa_argument.dart';
import 'package:proj_scaffold/inhousetraining.dart';
import 'package:proj_scaffold/kupukupu.dart';
import 'package:proj_scaffold/lms.dart';
import 'package:proj_scaffold/home.dart';
import 'package:proj_scaffold/publictraining.dart';
// import 'package:badges/badges.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Simple';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const MyStatefulWidget(
        title: 'test',
      ),

      // Register Widget in the route table
      routes: {
        // "/Beranda": (context) => const MyHomePage(),
        "/BeasiswaForm": (context) => const BeasiswaForm(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  late String beasiswaState = "AWAL";

  int _selectedIindex = 0;

  final txtSearchController = TextEditingController();

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    LMS(),
    Account(),
    MyBeasiswaHome(),
    BeasiswaForm(),
    Bajaj(),
    Kupukupu(),
    Portofolio(),
    // Course(),
    Akhlak(),
    Beasiswa(),
    PublicTraining(),
    InHouseTraining(),
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    print(beasiswaState);

    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Learning Management System'),
          centerTitle: true,
          actions: <Widget> [
            // IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.search),
            // ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),

        body: Center(
          child: _widgetOptions.elementAt(_selectedIindex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Tentang LMS',
              backgroundColor: Colors.teal,
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.business),
            //   label: 'Business',
            //   backgroundColor: Colors.blueAccent,
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.description),
              label: 'Beasiswa Form',
              backgroundColor: Colors.teal,
            ),
          ],
          currentIndex: _selectedIindex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "gambar/user.png",
                    ),
                  ),
                  color: Colors.teal,
                ),
                child: Text("Kanzler"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("User"),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: const Icon(
                    Icons.account_box,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  title: const Text("Akhlak"),
                  // subtitle: Text("Koleksi"),
                  // trailing: Text("masuk"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Akhlak(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: const Icon(
                    Icons.school,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  title: const Text("Beasiswa"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Beasiswa(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: const Icon(
                    Icons.account_box,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  title: const Text("Public Training"),
                  // subtitle: Text("LMS"),
                  // trailing: Text("Cek"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PublicTraining(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: const Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  title: const Text("In House Trainig"),
                  // subtitle: Text("LMS"),
                  // trailing: Text("Cek"),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InHouseTraining(),
                      ),
                    );
                  },
                ),
              ),


              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Admin"),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: const Icon(
                    Icons.description,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  title: const Text("Beasiswa Form"),
                  onTap: () {

                    final  beasiswaArguments = BeasiswaArgumen(0, "", "simpan");
                    // BeasiswaArgumen(0, "", "simpan");

                    Navigator.pushNamed(
                      context,
                      "/BeasiswaForm",
                      arguments: beasiswaArguments,
                    ).whenComplete(() {
                      setState(() {
                        // Monitoring State
                        beasiswaState = "refresh";
                        print(beasiswaState);

                        Navigator.pop(context);
                      });
                    });
                  },
                ),
              ),
            ],
          ),
        ),

    //     floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //
    //   final  beasiswaArguments = BeasiswaArgumen;
    //   Navigator.pushNamed(
    //     context,
    //     "/BeasiswaForm",
    //     arguments: beasiswaArguments,
    //   ).whenComplete(() {
    //     setState(() {
    //       // Monitoring State
    //       beasiswaState = "refresh";
    //       print(beasiswaState);
    //     });
    //   });
    // },
    // child: Icon(Icons.create),
    // ),// This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
