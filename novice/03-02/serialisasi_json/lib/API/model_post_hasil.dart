import 'dart:convert';

import 'package:http/http.dart' as libHttp;

class PostHasil {
  String id;
  String nama;
  String pekerjaan;
  String dibuat;

// ini adalah constructor
  PostHasil({this.id, this.nama, this.pekerjaan, this.dibuat});

  //membuat map dari hasil json nya
  factory PostHasil.buatPostHasil(Map<String, dynamic> namaObjek) {
    return PostHasil(
      id: namaObjek['id'],
      nama: namaObjek['name'],
      pekerjaan: namaObjek['job'],
      dibuat: namaObjek['createdAt'],
    );
  }
  //alamat untuk latihan https://reqres.in/
  //membuat fungsi atau metode untuk menghubugkan aplikasi ke API
  // karena future maka harus async
  static Future<PostHasil> konekKeAPi(String nama, String pekerjaan) async {
    String apiUrl = 'https://reqres.in/api/users';

    var apiHasil = await libHttp.post(apiUrl, body: {
      'name': nama,
      'job': pekerjaan,
    });

    var jsonObjek = json.decode(apiHasil.body);

    return PostHasil.buatPostHasil(jsonObjek);
  }
}
