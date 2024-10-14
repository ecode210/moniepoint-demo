import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_demo/utils/assets.dart';
import 'package:moniepoint_demo/view-models/dashboard_view_model.dart';
import 'package:moniepoint_demo/views/home/home.dart';
import 'package:moniepoint_demo/views/search/search.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  static const path = "/dashboard";

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends ConsumerState<Dashboard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(dashboardProvider)
        ..initDashboard()
        ..animateSlider();
    });
  }

  @override
  Widget build(BuildContext context) {
    final dashboardVM = ref.watch(dashboardProvider);
    return Scaffold(
      extendBody: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: dashboardVM.pageController,
        onPageChanged: dashboardVM.dashboardOnPageChanged,
        children: const [
          Search(),
          SizedBox(),
          Home(),
          SizedBox(),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 80.h,
          width: 428.w,
          alignment: Alignment.topCenter,
          child: Container(
            height: 60.h,
            width: 300.w,
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    dashboardVM.animateDashboard(0);
                  },
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: dashboardVM.pageIndex == 0
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      SVGAssets.searchSolid,
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    dashboardVM.animateDashboard(1);
                  },
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: dashboardVM.pageIndex == 1
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      SVGAssets.chat,
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    dashboardVM.animateDashboard(2);
                  },
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: dashboardVM.pageIndex == 2
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      SVGAssets.home,
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    dashboardVM.animateDashboard(3);
                  },
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: dashboardVM.pageIndex == 3
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      SVGAssets.heart,
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    dashboardVM.animateDashboard(4);
                  },
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: dashboardVM.pageIndex == 4
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      SVGAssets.user,
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).animate().slideY(duration: 1000.ms, curve: Curves.easeOut, begin: 1, end: 0),
        ),
      ),
    );
  }
}
