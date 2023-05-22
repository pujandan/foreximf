import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:foreximf/core/constants/app_theme.dart';
import 'package:foreximf/core/routers/router_name.dart';
import 'package:foreximf/core/translations/translation.dart';
import 'package:get/get.dart';

import 'core/routers/app_router.dart';

void main() async {
  _initialize().then((value) async {
    await _run();
  });
}

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
}

Future<void> _run() async {
  runZonedGuarded(() {
    runApp(const MainApp());
  }, FirebaseCrashlytics.instance.recordError);
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('id', 'ID'),
      fallbackLocale: const Locale('en', 'US'),
      title: "labelApp".tr,
      getPages: appRoutes(),
      initialRoute: RouterName.taksOne,
      theme: AppTheme.theme(context),
      transitionDuration: AppTheme.transitionDuration,
    );
  }
}
