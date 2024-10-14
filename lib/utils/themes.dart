import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_demo/utils/colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.kPrimary,
      primary: AppColors.kPrimary,
      primaryContainer: AppColors.primaryContainerLight,
      onPrimaryContainer: AppColors.onPrimaryContainerLight,
      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.onTertiaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,
      error: AppColors.error,
      errorContainer: AppColors.errorContainer,
      onErrorContainer: AppColors.onErrorContainer,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceLight,
      foregroundColor: AppColors.onSurfaceLight,
      centerTitle: true,
      elevation: 0,
      systemOverlayStyle: AppColors.lightNavAndStatusBar,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 40.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      displayMedium: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 30.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      displaySmall: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      headlineLarge: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      headlineMedium: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      headlineSmall: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      bodyLarge: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      bodyMedium: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      bodySmall: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      titleLarge: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      titleMedium: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      titleSmall: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      labelLarge: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      labelMedium: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      labelSmall: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: AppColors.onSurfaceLight,
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
    ),
    scaffoldBackgroundColor: AppColors.surfaceLight,
  );
}
