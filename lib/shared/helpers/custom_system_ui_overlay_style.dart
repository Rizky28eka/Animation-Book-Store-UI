import 'package:flutter/services.dart';
import '../colors.dart';

class CustomSystemUiOverlayStyle {
  static const light = SystemUiOverlayStyle(
    statusBarColor: transparentColor,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  static const dark = SystemUiOverlayStyle(
    statusBarColor: transparentColor,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );
}
