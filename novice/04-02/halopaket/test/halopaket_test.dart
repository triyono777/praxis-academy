import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:halopaket/halopaket.dart';

void main() {
  const MethodChannel channel = MethodChannel('halopaket');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Halopaket.platformVersion, '42');
  });
}
