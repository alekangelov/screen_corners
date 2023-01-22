import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'screen_corners_platform_interface.dart';

/// An implementation of [ScreenCornersPlatform] that uses method channels.
class MethodChannelScreenCorners extends ScreenCornersPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('screen_corners');

  var _value = 0.0;

  @override
  Future<double?> initScreenCorners() async {
    try {
      _value = await methodChannel.invokeMethod('getScreenCorners');
      return _value;
    } catch (e) {
      return 0;
    }
  }

  @override
  double getValue() {
    return _value;
  }
}
