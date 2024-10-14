import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_demo/utils/assets.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.hint,
    this.controller,
    this.onSubmitted,
  });

  final String hint;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFieldTapRegion(
      child: TextField(
        focusNode: focusNode,
        controller: widget.controller,
        cursorColor: Theme.of(context).colorScheme.primary,
        cursorRadius: Radius.circular(100.r),
        cursorHeight: 25.h,
        keyboardType: TextInputType.text,
        maxLines: 1,
        minLines: 1,
        enabled: true,
        textInputAction: TextInputAction.search,
        onSubmitted: widget.onSubmitted,
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          contentPadding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
          isDense: true,
          hintText: widget.hint,
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.tertiary,
              ),
          prefixIcon: Container(
            height: 20.h,
            width: 20.h,
            padding: EdgeInsets.only(right: 10.w),
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              SVGAssets.search,
              height: 20.h,
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
