import 'package:chaty/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LoginButtonType {
  normal,
  outLineBorder,
}

class CustomButton extends StatelessWidget {
  final String title;
  final double? borderRadius;
  final Color? textColor;
  final Function onTapped;
  final bool isLoading;
  final Color color;
  final EdgeInsets? margin;
  final double? width;
  final double? hieght;
  final double? borderWidth;
  final double? fontSize;
  final Color? borderColor;
  final bool? withIcone;
  final bool? withShadow;
  final Widget? iconeWidget;
  final FontWeight? fontWeight;
  final LoginButtonType type;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTapped,
    this.isLoading = false,
    this.color = AppColors.blueGreen1,
    this.margin,
    this.borderRadius,
    this.withShadow,
    this.fontWeight,
    this.textColor,
    this.hieght,
    this.withIcone,
    this.borderWidth,
    this.width,
    this.iconeWidget,
    this.borderColor = AppColors.blueGreen1,
    this.type = LoginButtonType.normal,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapped();
      },
      child: Container(
        height: hieght ?? 50.h,
        width: width,
        margin: margin,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          color: (isLoading != true)
              ? ((type == LoginButtonType.outLineBorder)
                  ? Colors.transparent
                  : color)
              : Colors.grey.withOpacity(.5),
          boxShadow: withShadow == true
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(.16),
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: const Offset(1, 1), // Shadow position
                  ),
                ]
              : null,
          border: (borderColor != null || type == LoginButtonType.outLineBorder)
              ? Border.all(
                  width: borderWidth ?? 1,
                  color: ((type == LoginButtonType.outLineBorder)
                      ? color
                      : borderColor!))
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            withIcone == true ? iconeWidget! : const SizedBox(),
            withIcone == true ? const SizedBox() : const SizedBox(),
            FittedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Janna-LTBold",
                  color: textColor ?? Colors.white,
                  fontSize: fontSize ?? 18.sp,
                  fontWeight: fontWeight ?? FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
