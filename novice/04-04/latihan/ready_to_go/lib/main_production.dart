import 'package:flutter/material.dart';
import 'package:ready_to_go/src/app.dart';
import 'package:ready_to_go/src/config/flavor_config.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.PRODUCTION,
      values: FlavorValues(
          baseUrl:
              "https://raw.githubusercontent.com/triyono777/praxis-academy/master/novice/04-04/latihan/ready_to_go/lib/json/person_production.json"));

  runApp(MyApp());
}
