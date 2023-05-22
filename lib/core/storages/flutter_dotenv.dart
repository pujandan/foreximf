import 'package:flutter/services.dart';
import 'package:foreximf/core/utils/parser_util.dart';
import 'package:flutter_config/flutter_config.dart';

class FlutterDotEnv {
  static final FlutterDotEnv _singleton = FlutterDotEnv._internal();

  static const _apiTimeOut = "API_TIMEOUT_MILLISECOND";
  static const _apiBaseUrl = "BASE_URL";
  static const _apiKey = "API_KEY";

  factory FlutterDotEnv() {
    return _singleton;
  }

  FlutterDotEnv._internal();

  int get apiTimeOut =>
      ParserUtil().dynamicToInt(FlutterConfig.get(_apiTimeOut));

  String get apiBaseUrl => FlutterConfig.get(_apiBaseUrl);
  String get apiKey => FlutterConfig.get(_apiKey);

  Future<bool> get isEnvDev async => await _getEnv() == "dev";
  Future<bool> get isEnvProd async => await _getEnv() == "prod";

  Future<String> _getEnv() async {
    final flavor = await const MethodChannel('flavor').invokeMethod<String>(
      "getFlavor",
    );

    return flavor ?? "local";
  }
}
