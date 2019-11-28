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
          "lastName": "flutterDev",
          "github": "github.com/triyono777",
          "twitter": "@triyono777",
          "website": "triyono777.com"
        }
      }
    ''';
  }
}
