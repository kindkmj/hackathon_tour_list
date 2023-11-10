import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
     GMSServices.provideAPIKey("AIzaSyDbuBLDavnT9T6hFu7X8G0Ytm0B1FyANkw")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
