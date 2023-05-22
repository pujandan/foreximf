import 'package:flutter/material.dart';

class DecorationUtil {
  static final DecorationUtil _singleton = DecorationUtil._internal();

  factory DecorationUtil() {
    return _singleton;
  }

  DecorationUtil._internal();

  InputDecoration roundedFormField({
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? fillColor,
    Color? borderSideColor,
    double radius = 10.0,
    bool isDense = false,
    String? hintText,
    double contentPadding = 15.0,
    String? errorText,
  }) {
    final decoration = InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      filled: true,
      isDense: isDense,
      errorText: errorText,
      fillColor: fillColor ?? Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        borderSide: BorderSide(
          color: borderSideColor ?? const Color(0xFF000000),
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        borderSide: BorderSide(
          color: borderSideColor ?? const Color(0xFF000000),
          width: 2,
        ),
      ),
      contentPadding: EdgeInsets.all(contentPadding),
      hintText: hintText,
    );

    return decoration;
  }
}
