import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_demo/utils/assets.dart';
import 'package:moniepoint_demo/utils/colors.dart';
import 'package:moniepoint_demo/view-models/dashboard_view_model.dart';
import 'package:moniepoint_demo/views/search/widgets/search_text_field.dart';

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  SearchState createState() => SearchState();
}

class SearchState extends ConsumerState<Search> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(AppColors.darkNavAndStatusBar);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(dashboardProvider).searchController.clear();
    });
  }

  @override
  void deactivate() {
    SystemChrome.setSystemUIOverlayStyle(AppColors.lightNavAndStatusBar);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final dashboardVM = ref.watch(dashboardProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onTertiary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 926.h,
            width: 428.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(JPGAssets.map),
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            child: SizedBox(
              width: 428.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  40.horizontalSpace,
                  Expanded(
                    child: SearchTextField(
                      hint: "Search location",
                      controller: dashboardVM.searchController,
                    ),
                  ).animate().scale(duration: 1000.ms, curve: Curves.easeOut),
                  10.horizontalSpace,
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      radius: 28.sp,
                      child: SvgPicture.asset(
                        SVGAssets.options,
                        height: 17.h,
                        fit: BoxFit.fitHeight,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ).animate().scale(duration: 1000.ms, curve: Curves.easeOut),
                  40.horizontalSpace,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 160.h,
            left: 30.w,
            child: PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.horizontalSpace,
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: SvgPicture.asset(
                            SVGAssets.shield,
                            height: 20.h,
                            fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.tertiary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "Cosy Areas",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.horizontalSpace,
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: SvgPicture.asset(
                            SVGAssets.wallet,
                            height: 20.h,
                            fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.tertiary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "Price",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.horizontalSpace,
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: SvgPicture.asset(
                            SVGAssets.basket,
                            height: 20.h,
                            fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.tertiary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "Infrastructure",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      Feedback.forTap(context);
                      dashboardVM.toggleMarkerDetails();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.horizontalSpace,
                        SizedBox(
                          height: 18.h,
                          width: 30.w,
                          child: SvgPicture.asset(
                            SVGAssets.layers,
                            height: 18.h,
                            fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.tertiary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "Without any layer",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              padding: EdgeInsets.zero,
              elevation: 0,
              enableFeedback: true,
              position: PopupMenuPosition.over,
              color: Theme.of(context).colorScheme.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              popUpAnimationStyle: AnimationStyle(
                duration: 500.ms,
                curve: Curves.easeIn,
                reverseDuration: 500.ms,
                reverseCurve: Curves.easeOut,
              ),
              icon: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                radius: 25.sp,
                child: SvgPicture.asset(
                  SVGAssets.layers,
                  height: 20.h,
                  fit: BoxFit.fitHeight,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ).animate().scale(duration: 1000.ms, curve: Curves.easeOut),
          ),
          Positioned(
            bottom: 100.h,
            left: 30.w,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                radius: 25.sp,
                child: SvgPicture.asset(
                  SVGAssets.myLocation,
                  height: 20.h,
                  fit: BoxFit.fitHeight,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ).animate().scale(duration: 1000.ms, curve: Curves.easeOut),
          ),
          Positioned(
            bottom: 100.h,
            right: 30.w,
            child: TextButton(
              onPressed: () {},
              child: Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SVGAssets.list,
                      height: 15.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                    5.horizontalSpace,
                    Text(
                      "List of variants",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ],
                ),
              ),
            ).animate().scale(duration: 1000.ms, curve: Curves.easeOut),
          ),
          Positioned(
            top: 200.h,
            left: 120.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "10,3 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
          Positioned(
            top: 270.h,
            left: 150.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "11 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
          Positioned(
            top: 320.h,
            right: 50.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "7,8 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
          Positioned(
            top: 500.h,
            right: 30.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "8,5 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
          Positioned(
            top: 550.h,
            left: 100.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "13,3 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
          Positioned(
            top: 630.h,
            right: 70.w,
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                dashboardVM.showMarkerDetails ? "6,95 mn P" : "🏛️",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            )
                .animate()
                .scaleXY(delay: 500.ms, duration: 500.ms, curve: Curves.easeOut, alignment: Alignment.bottomLeft),
          ),
        ],
      ),
    );
  }
}
