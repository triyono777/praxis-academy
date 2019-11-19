class Gambar {
  final int id;
  final String judul;
  final String thumbnail;
  Gambar({this.judul, this.id, this.thumbnail});

  factory Gambar.fromJson(Map<String, dynamic> json) {
    return Gambar(
      id: json['id'] as int,
      judul: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }
}
