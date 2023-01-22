import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'screen_corners_platform_interface.dart';

/// An implementation of [ScreenCornersPlatform] that uses method channels.
class MethodChannelScreenCorners extends ScreenCornersPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('screen_corners');

  var _value = CornerValue(value: 0.0);

  @override
  Future<CornerValue?> initScreenCorners() async {
    try {
      final value = await methodChannel.invokeMethod('getScreenCorners');
      _value = CornerValue(value: value);
      return _value;
    } catch (e) {
      return _value;
    }
  }

  @override
  CornerValue getValue() {
    return _value;
  }
}
