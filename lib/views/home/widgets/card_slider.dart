import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSlider extends ConsumerStatefulWidget {
  const CardSlider({super.key, required this.delay, required this.text, this.alignment = Alignment.center});

  final Duration delay;
  final String text;
  final Alignment alignment;

  @override
  CardSliderState createState() => CardSliderState();
}

class CardSliderState extends ConsumerState<CardSlider> {
  var _animValue = 60.w;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(widget.delay, () {
        if (!mounted) return;
        setState(() => _animValue = 428.w);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: widget.alignment,
      children: [
        Material(
          elevation: 0,
          shadowColor: Colors.black26,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100.r),
          clipBehavior: Clip.antiAlias,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AnimatedContainer(
              duration: 1000.ms,
              curve: Curves.easeIn,
              height: 60.h,
              width: _animValue,
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.25),
                borderRadius: BorderRadius.circular(100.r),
              ),
              alignment: Alignment.centerRight,
              child: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 15.sp,
                ),
              ),
            ).animate().scale(delay: Duration(milliseconds: widget.delay.inMilliseconds - 500)),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: EdgeInsets.fromLTRB(10.w, 0, 50.w, 0),
            alignment: Alignment.center,
            child: Text(
              widget.text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ).animate().fadeIn(delay: Duration(milliseconds: widget.delay.inMilliseconds + 500)),
          ),
        ),
      ],
    );
  }
}
