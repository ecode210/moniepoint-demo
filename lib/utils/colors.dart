import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static const kPrimary = Color(0xFFFC9E12);
  static const error = Color(0xFFBA1A1A);
  static const errorContainer = Color(0xFFFFDAD6);
  static const onErrorContainer = Color(0xFF410002);

  static const primaryContainerLight = Color(0xFFFCF5E3);
  static const onPrimaryContainerLight = Color(0xFFA5957E);
  static const tertiaryLight = Color(0xFF737373);
  static const onTertiaryLight = Color(0xFF232220);
  static const surfaceLight = Color(0xFFF6F6F5);
  static const onSurfaceLight = Color(0xFF1C1810);

  static final lightNavAndStatusBar = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.kPrimary.withOpacity(0.01),
    systemNavigationBarContrastEnforced: true,
    systemNavigationBarDividerColor: Colors.transparent,
  );

  static final darkNavAndStatusBar = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: AppColors.kPrimary.withOpacity(0.01),
    systemNavigationBarContrastEnforced: true,
    systemNavigationBarDividerColor: Colors.transparent,
  );
}
