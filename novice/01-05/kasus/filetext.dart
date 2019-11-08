import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<void> printDariInternet() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  var response = await request.close();
  // transforms and prints the response
  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
    await File('data_dari_internet.txt').writeAsString(contents);
  }
}

main() {
  printDariInternet();
}
