class PersonJson {
  static PersonJson _instance = new PersonJson.internal();

  PersonJson.internal();

  factory PersonJson() => _instance;

  static String getJson() {
    return '''
      {
        "person": {
          "apiUrl": "Local",
          "name": "Triyono",
          "lastName": "FlutterDev",
          "github": "github.com/triyono777",
          "twitter": "@dahsyat7",
          "website": "triyono.id"
        }
      }
    ''';
  }
}
