import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_demo/utils/assets.dart';
import 'package:moniepoint_demo/views/home/widgets/card_slider.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.05),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 926.h,
            width: 428.w,
          ),
          Positioned(
            top: 200.h,
            right: -500.w,
            child: Container(
              height: 800.h,
              width: 800.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
                    blurRadius: 400,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  20.verticalSpace,
                  Row(
                    children: [
                      20.horizontalSpace,
                      Container(
                        height: 50.h,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              SVGAssets.location,
                              height: 15.h,
                              fit: BoxFit.fitHeight,
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.onPrimaryContainer,
                                BlendMode.srcIn,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              "Saint Petersburg",
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                                  ),
                            ),
                          ],
                        ).animate().fadeIn(delay: 500.ms, duration: 500.ms, curve: Curves.easeIn),
                      )
                          .animate()
                          .fadeIn(duration: 500.ms, curve: Curves.easeIn)
                          .slideX(duration: 500.ms, curve: Curves.easeIn),
                      const Spacer(),
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage(JPGAssets.person),
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ).animate().scale(duration: 500.ms, curve: Curves.easeIn),
                      20.horizontalSpace,
                    ],
                  ),
                  30.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hi, Marina\n",
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                                ),
                          ),
                          TextSpan(
                            text: "let's select your perfect place",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                    ),
                  ).animate().fadeIn(delay: 500.ms, duration: 1000.ms, curve: Curves.easeIn),
                  30.verticalSpace,
                  Row(
                    children: [
                      20.horizontalSpace,
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            padding: EdgeInsets.all(20.w),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "BUY",
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                        color: Theme.of(context).colorScheme.surface,
                                      ),
                                ),
                                const Spacer(),
                                AnimatedDigitWidget(
                                  value: 1034,
                                  textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                                        color: Theme.of(context).colorScheme.surface,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 50.sp,
                                      ),
                                  duration: 3000.ms,
                                  curve: Curves.easeOut,
                                  enableSeparator: true,
                                  separateSymbol: " ",
                                ),
                                Text(
                                  "offers",
                                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: Theme.of(context).colorScheme.surface,
                                      ),
                                ),
                                10.verticalSpace,
                                const Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(delay: 1000.ms, duration: 1000.ms, curve: Curves.easeIn),
                      10.horizontalSpace,
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            padding: EdgeInsets.all(20.w),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "RENT",
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                      ),
                                ),
                                const Spacer(),
                                AnimatedDigitWidget(
                                  value: 2212,
                                  textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 50.sp,
                                      ),
                                  duration: 3000.ms,
                                  curve: Curves.easeOut,
                                  enableSeparator: true,
                                  separateSymbol: " ",
                                ),
                                Text(
                                  "offers",
                                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                      ),
                                ),
                                10.verticalSpace,
                                const Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ).animate().scale(delay: 1000.ms, duration: 1000.ms, curve: Curves.easeIn),
                      20.horizontalSpace,
                    ],
                  ),
                  30.verticalSpace,
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 428.w,
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.r),
                            topRight: Radius.circular(35.r),
                          ),
                        ),
                        child: ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: [
                            Container(
                              height: 220.h,
                              width: 408.w,
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(30.r),
                                image: const DecorationImage(
                                  image: AssetImage(JPGAssets.two),
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: CardSlider(
                                delay: 2500.ms,
                                text: "Gladkova St., 25",
                              ),
                            ),
                            10.verticalSpace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 1 / 2,
                                    child: Container(
                                      padding: EdgeInsets.all(10.w),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        borderRadius: BorderRadius.circular(30.r),
                                        image: const DecorationImage(
                                          image: AssetImage(JPGAssets.one),
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      alignment: Alignment.bottomLeft,
                                      child: CardSlider(
                                        delay: 2500.ms,
                                        text: "Gubina St.",
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                  ),
                                ),
                                10.horizontalSpace,
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            borderRadius: BorderRadius.circular(30.r),
                                            image: const DecorationImage(
                                              image: AssetImage(JPGAssets.three),
                                              alignment: Alignment.center,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          child: CardSlider(
                                            delay: 2500.ms,
                                            text: "Trefelova St.",
                                            alignment: Alignment.centerLeft,
                                          ),
                                        ),
                                      ),
                                      10.verticalSpace,
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            borderRadius: BorderRadius.circular(30.r),
                                            image: const DecorationImage(
                                              image: AssetImage(JPGAssets.four),
                                              alignment: Alignment.center,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          alignment: Alignment.bottomLeft,
                                          child: CardSlider(
                                            delay: 2500.ms,
                                            text: "Sedova St.",
                                            alignment: Alignment.centerLeft,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            150.verticalSpace,
                          ],
                        ),
                      )
                          .animate()
                          .slideY(delay: 500.ms, duration: 2000.ms, begin: 1, end: 0, curve: Curves.easeIn)
                          .fadeIn(delay: 500.ms, duration: 1000.ms, curve: Curves.easeIn),
                      Positioned(
                        bottom: -450.h,
                        child: Container(
                          height: 500.h,
                          width: 428.w,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms);
  }
}
