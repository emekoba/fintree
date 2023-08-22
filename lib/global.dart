// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF8F5FF),
    iconTheme: const IconThemeData(color: Color(0xff6347EB), size: 26),
    textTheme: TextTheme(
      labelLarge: GoogleFonts.redHatDisplay(color: Colors.white),
      displayLarge: GoogleFonts.redHatDisplay(
        color: const Color(0xff3d3a43),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: GoogleFonts.redHatDisplay(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.w800,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xff6347EB),
      colorScheme: ColorScheme(
        primary: Color(0xff6347EB),
        secondary: Color(0xffd5c8f5),
        surface: Color(0xff6347EB),
        background: Color(0xff6347EB),
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.black,
        brightness: Brightness.light,
      ),
    ),
    colorScheme: const ColorScheme(
      primary: Color(0xff6347EB),
      background: Color(0xffEBECF0),
      onSurface: Colors.black,
      onPrimary: Colors.black,
      secondary: Color(0xffc6c6c6),
      onSecondary: Colors.white,
      brightness: Brightness.light,
      onError: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      error: Colors.redAccent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1,
          color: Color(0xffc6c6c6),
        ),
      ),
      hintStyle: GoogleFonts.redHatDisplay(color: const Color(0xffc6c6c6)),
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1.5,
          color: Color(0xff805adb),
        ),
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  );
}

Color ThemeColor_MAIN = const Color(0xff6347EB);

Color ThemeColor_ACCENT = const Color(0xffd5c8f5);

double DEVICE_WIDTH(context, {offset = 0}) =>
    MediaQuery.of(context).size.width / offset;

double DEVICE_HEIGHT(context, {offset}) =>
    MediaQuery.of(context).size.height / (offset ?? 1);

void dismissKeyboard(BuildContext context) {
  final FocusScopeNode focus = FocusScope.of(context);

  if (!focus.hasPrimaryFocus) {
    focus.unfocus();
  }
}

saveToClipBoard({
  required BuildContext context,
  required dynamic payload,
  String? fieldName,
}) async {
  await Clipboard.setData(
    ClipboardData(text: payload),
  ).then((_) {
    // notify(context: context, message: "${fieldName ?? ""} copied to clipboard");
  });
}
