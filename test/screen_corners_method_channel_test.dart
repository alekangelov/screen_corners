import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_corners/screen_corners.dart';
import 'package:screen_corners/screen_corners_method_channel.dart';

void main() {
  MethodChannelScreenCorners platform = MethodChannelScreenCorners();
  const MethodChannel channel = MethodChannel('screen_corners');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 42;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('initScreenCorners', () async {
    expect(await screenCorners.initScreenCorners(), 42);
  });
}
