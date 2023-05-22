import 'package:flutter/material.dart';
import 'package:foreximf/core/constants/app_theme.dart';
import 'package:foreximf/feature/taks_one/presentation/pages/taks_one_page.dart';
import 'package:foreximf/feature/taks_two/presentation/pages/taks_two_page.dart';
import 'package:get/get.dart';
import 'package:foreximf/core/routers/router_name.dart';

appRoutes() => [
      GetPage(
        name: RouterName.taksOne,
        page: () => const TaksOnePage(),
        transition: AppTheme.transition,
      ),
      GetPage(
        name: RouterName.taksTwo,
        page: () => const TaksTwoPage(),
        middlewares: [MyMiddelware()],
        transition: AppTheme.transition,
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint(page?.name);
    return super.onPageCalled(page);
  }
}
