import 'package:flutter/services.dart';

class FlutterMethodChannel {
  static const channelName = '${{{name.snakeCase()}}}'; // this channel name needs to match the one in Native method channel
  static const String METHOD_NAME = "methodName";

  static FlutterMethodChannel? _instance;
  static const MethodChannel _platform = MethodChannel(channelName);

  FlutterMethodChannel._() {
    _platform.setMethodCallHandler(platformCallHandler);
  }

  static FlutterMethodChannel? get instance {
    _instance ??= FlutterMethodChannel._();
    return _instance;
  }

  Future platformCallHandler(MethodCall call) async {
    //    print("_platformCallHandler call ${call.method} ${call.arguments}");
    switch (call.method) {
      case '':
        break;
      default:
      // print('Unknowm method ${call.method} ');
    }
  }

  Future<String> methodName() async {
    try {
      String value = await _platform.invokeMethod(METHOD_NAME);
      return value;
    } on PlatformException catch (e) {
      // print("Failed to Invoke: '${e.message}'.");
      return '';
    }
  }

 

}