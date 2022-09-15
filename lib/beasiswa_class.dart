class Beasiswa_class {

  final int id;
  final String nama_beasiswa;

  Beasiswa_class({
    required this.id,
    required this.nama_beasiswa
  });

  factory Beasiswa_class.fromMap(Map<String, dynamic> json) => Beasiswa_class(
    id: json['id'],
    nama_beasiswa: json['nama_beasiswa'],
  );

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'nama_beasiswa' : nama_beasiswa,
    };
  }


}