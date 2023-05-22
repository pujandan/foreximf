import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class FlutterLogger {
  static final FlutterLogger _singleton = FlutterLogger._internal();

  factory FlutterLogger() {
    return _singleton;
  }

  FlutterLogger._internal();

  Future<void> crashlyticsRecordError(
      dynamic exception, dynamic stackTrace) async {
    FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      printDetails: true,
    );
  }

  void throwError({
    required String code,
    required dynamic throwable,
    required StackTrace stackTrace,
    bool recordErr = false,
  }) {
    if (recordErr) {
      crashlyticsRecordError(throwable, stackTrace);
    }

    throw PlatformException(
      stacktrace: stackTrace.toString(),
      code: code,
      message: _getMessage(throwable),
    );
  }

  String _getMessage(dynamic exception) {
    try {
      if (exception is PlatformException) {
        return exception.message ?? "internal_error".tr;
      } else {
        return exception.toString();
      }
    } catch (_) {
      return "internal_error".tr;
    }
  }
}
