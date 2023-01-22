import Flutter
import UIKit

extension UIScreen {
  public var displayCornerRadius: CGFloat {
      guard let cornerRadius = self.value(forKey:"_displayCornerRadius") as? CGFloat else {
          return 0
      }
      return cornerRadius
  }
}

public class SwiftScreenCornersPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "screen_corners", binaryMessenger: registrar.messenger())
    let instance = SwiftScreenCornersPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "getScreenCorners":
        result(UIScreen.main.displayCornerRadius)
      default:
        result(FlutterMethodNotImplemented)
      }
  }
}
