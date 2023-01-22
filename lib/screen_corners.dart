import 'screen_corners_platform_interface.dart';

class ScreenCorners {
  static final ScreenCorners _instance = ScreenCorners._internal();

  factory ScreenCorners() {
    return _instance;
  }

  ScreenCorners._internal();

  static Future<CornerValue?> initScreenCorners() {
    return ScreenCornersPlatform.instance.initScreenCorners();
  }

  static CornerValue get corner => ScreenCornersPlatform.instance.getValue();

  static double get cornerValue => corner.value;
}
