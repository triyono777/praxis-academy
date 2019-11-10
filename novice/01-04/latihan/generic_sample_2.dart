import 'dart:collection';

// Generic adalah penggunaan umum dalam aplikasi

main() {
  var tipeLog = List<String>();
  tipeLog.add('WARNING');
  tipeLog.add('INFO');
  tipeLog.add('ERROR');

  for (var tipe in tipeLog) {
    print(tipe);
  }

  var numberSet = Set<int>();
  numberSet.add(400);
  numberSet.add(401);
  numberSet.add(404);
  numberSet.add(500);
  numberSet.add(502);
  numberSet.add(505);

  print('default implementasi : ${numberSet.runtimeType}');
  for (var no in numberSet) {
    print(no);
  }

  var queue = Queue<int>();
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(25);
  queue.addLast(21);
  queue.addLast(70);
  print('default implementasi : ${queue.runtimeType}');
  for (var daftar in queue) {
    print(daftar);
  }

  Map<String, String> map = {'nama': 'triyono', 'id': 'ID 887'};
  print('MAP= ${map}');

// Generics Examples

// Generic string collection
// Collection<String> list = ['a','b','c'];

// Generic Integer List
// List<int> list = [11,12,13];

// Generics String List
// List<String> list = new List<String>();

// Generics String List
// var list = new List<String>();

// Generics with HashSet
// HashSet<String> collection = new HashSet<String>();

// Generics with HashSet
// var collection = new HashSet<String>();

// Generics with Map and HashMap
// Map<String, double> map = new HashMap<String, double>();

// Generics with Map and HashMap
// var map = new HashMap<String, double>(

  /// perbedaan list, map dan set
  /// list = sekumpulan data
  /// map = data yang berpasangan
  /// set = setiap data uniq

  //sample
  var location1 = new Location<double>(21.271488, -157.822806);
  print(location1);

  var location2 = new Location<String>('21.271488', '-157.822806');
  print(location2);

  var location3 = new Location<int>(21, -157);
  print(location3);
}

class Location<E> {
  E lat, lng;

  Location(this.lat, this.lng);

  toString() => "Have you been to ${lat}, ${lng}?";
}
