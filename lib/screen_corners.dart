import 'screen_corners_platform_interface.dart';

class ScreenCorners {
  Future<double?> initScreenCorners() {
    return ScreenCornersPlatform.instance.initScreenCorners();
  }

  double get value => ScreenCornersPlatform.instance.getValue();
}

final ScreenCorners screenCorners = ScreenCorners();
