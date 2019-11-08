main() async {
  var jeda = Duration(seconds: 1);
  var stream = Stream<int>.periodic(jeda);
  stream = stream.take(5);

  print(await stream.length);
}
