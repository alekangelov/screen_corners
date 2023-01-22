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

  Future<CornerValue?> initScreenCorners() {
    throw UnimplementedError(
      'initScreenCorners() has not been implemented.',
    );
  }

  CornerValue getValue() {
    throw UnimplementedError(
      'getValue() has not been implemented.',
    );
  }
}

class CornerValue {
  final double value;

  CornerValue({this.value = 0.0});

  or(num other) {
    return value == 0.0 ? other : value;
  }

  toDouble() {
    return value;
  }

  @override
  toString() {
    return value.toString();
  }

  toInt() {
    return value.toInt();
  }

  operator +(num other) {
    return value + other;
  }

  operator -(num other) {
    return value - other;
  }

  operator *(num other) {
    return value * other;
  }

  operator /(num other) {
    return value / other;
  }

  operator %(num other) {
    return value % other;
  }

  operator ~/(num other) {
    return value ~/ other;
  }

  operator <(num other) {
    return value < other;
  }

  operator <=(num other) {
    return value <= other;
  }

  operator >(num other) {
    return value > other;
  }

  operator >=(num other) {
    return value >= other;
  }

  @override
  bool operator ==(dynamic other) => value.hashCode == other.hashCode;

  @override
  int get hashCode => value.hashCode;

  operator -() {
    return -value;
  }
}
