main() async {
  var halo = await HaloAsync();
  print(halo);
}

Future<String> HaloAsync() async {
  await Future.delayed(Duration(seconds: 2));
  return 'pesan dari FUTURE';
}
