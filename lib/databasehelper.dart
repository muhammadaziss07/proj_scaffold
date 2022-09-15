import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:proj_scaffold/beasiswa_class.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'beasiswaDB.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE beasiswaTabel(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama_beasiswa TEXT
      )
      '''
    );
  }

  Future<List<Beasiswa_class>> getBeasiswa() async {
    Database db = await instance.database;
    var beasiswa_class = await db.query('beasiswaTabel', orderBy: 'nama_beasiswa');
    List<Beasiswa_class> beasiswa_classList = beasiswa_class.isNotEmpty
      ? beasiswa_class.map((e) => Beasiswa_class.fromMap(e)).toList()
      : [];
    return beasiswa_classList;
  }

  Future<List<Beasiswa_class>> getBeasiswaKriteria(namaBeasiswa) async {
    Database db = await instance.database;

    var beasiswa_class = await db.query(
      "beasiswaTabel",
      where: "nama_beasiswa LIKE ?",
      whereArgs: ["%$namaBeasiswa%"],
      orderBy: "nama_beasiswa"
    );

    List<Beasiswa_class> beasiswa_classList =
        beasiswa_class.isNotEmpty ? beasiswa_class.map((e) => Beasiswa_class.fromMap(e)).toList() : [];

    return beasiswa_classList;
  }

  Future<int> addBeasiswa(Beasiswa_class beasiswa_class) async {
    Database db = await instance.database;
    return await db.insert("beasiswaTabel", beasiswa_class.toMap());
  }

  Future<int> deleteBeasiswa(int id) async {
    Database db = await instance.database;
    return await db.delete(
      "beasiswaTabel",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> updateBeasiswa(Beasiswa_class beasiswa_class) async {
    Database db = await instance.database;
    return db.update(
        "beasiswaTabel",
        beasiswa_class.toMap(),
        where: "id = ?",
        whereArgs: [beasiswa_class.id]
    );
  }
}