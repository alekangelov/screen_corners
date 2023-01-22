import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'screen_corners_method_channel.dart';

abstract class ScreenCornersPlatform extends PlatformInterface {
  /// Constructs a ScreenCornersPlatform.
  ScreenCornersPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScreenCornersPlatform _instance = MethodChannelScreenCorners();

  /// The default instance of [ScreenCornersPlatform] to use.
  ///
  /// Defaults to [MethodChannelScreenCorners].
  static ScreenCornersPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScreenCornersPlatform] when
  /// they register themselves.
  static set instance(ScreenCornersPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<double?> initScreenCorners() {
    throw UnimplementedError(
      'initScreenCorners() has not been implemented.',
    );
  }

  getValue() {
    throw UnimplementedError(
      'getValue() has not been implemented.',
    );
  }
}
