import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_demo/utils/colors.dart';
import 'package:moniepoint_demo/utils/routers.dart';
import 'package:moniepoint_demo/views/dashboard.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp(
          title: "Moniepoint Demo",
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: ThemeData(
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
              displayLarge: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 40.sp,
                fontWeight: FontWeight.w400,
              ),
              displayMedium: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
              ),
              displaySmall: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
              ),
              headlineLarge: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
              headlineMedium: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              headlineSmall: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              bodyLarge: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              bodySmall: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              titleLarge: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              titleMedium: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              titleSmall: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
              labelLarge: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              labelMedium: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              labelSmall: TextStyle(
                fontFamily: "Euclid Circular A",
                color: AppColors.onSurfaceLight,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
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
          ),
          initialRoute: Dashboard.path,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
