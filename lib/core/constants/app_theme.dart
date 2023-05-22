import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static Color primaryColor = HexColor("#c89e86");
  static Color secondaryColor = HexColor("#a0816f");
  static Color darkColor = HexColor("#242A31");
  static Color softColor = HexColor("#ffba5d");

  static Color grey1Color = HexColor("#7c7d7e");
  static Color grey2Color = HexColor("#b6b7b7");
  static Color grey3Color = HexColor("#e4e4e4");
  static Color grey4Color = HexColor("#f4f4f4");

  static Color errorColor = HexColor("#c0392b");
  static Color warningColor = HexColor("#d35400");
  static Color successColor = HexColor("#27ae60");
  static Color infomationColor = HexColor("#3498db");

  static const double defaultMargin = 15;
  static const double defaultPadding = 15;
  static const double defaultRadiusDialog = 6;
  static const double defaultRadiusBottom = 20;

  static const transition = Transition.cupertinoDialog;
  static const transitionDuration = Duration(milliseconds: 250);

  static TextStyle subTitleText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: AppTheme.grey1Color,
    fontFamily: 'Rubik',
  );

  static TextStyle titleText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppTheme.secondaryColor,
    fontFamily: 'Rubik',
  );

  static IconData get iconBack => Icons.chevron_left;
  static IconData get iconNext => Icons.chevron_right;
  static IconData get iconSearch => Icons.search;
  static IconData get iconCrash => Icons.image_search_sharp;

  static ThemeData theme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      )),
      primaryColor: AppTheme.darkColor,
      primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
            color: Colors.white,
          ),
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: AppTheme.darkColor,
            secondary: AppTheme.darkColor,
          ),
      textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Rubik',
            bodyColor: Colors.black,
            displayColor: Colors.white,
          ),
    );
  }
}
