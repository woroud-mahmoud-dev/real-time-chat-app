import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final Border? border;
  final EdgeInsets? margin;
  final TextDirection? direction;
  final Function? onChangedCountryCode;
  final bool? showPass;
  final bool? readOnly;
  final Color? hinColor;
  final int? maxLines;
  final Function? onShowPass;
  final Function? onChanged;
  final String? title;
  final int? maxLength;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    this.hint,
    this.hinColor,
    required this.controller,
    this.validator,
    this.textInputType,
    this.border,
    this.margin,
    this.readOnly,
    this.onChangedCountryCode,
    this.showPass,
    this.maxLines,
    this.direction,
    this.onChanged,
    this.maxLength,
    this.title,
    this.suffixIcon,
    this.onShowPass,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction ?? Directionality.of(context),
      child: Container(
        margin: margin ?? const EdgeInsets.all(0.0),
        child: Column(
          children: [
            if (title != null)
              Row(
                mainAxisAlignment: (direction == TextDirection.ltr)
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: AppStyle.style14.copyWith(color: AppColors.black),
                  ),
                ],
              ),
            SizedBox(
              height: 7.h,
            ),
            Container(
              decoration: BoxDecoration(
                  // color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: IntrinsicHeight(
                child: TextFormField(
                  readOnly: readOnly ?? false,
                  controller: controller,
                  validator: validator ??
                      (v) {
                        return "";
                      },
                  onChanged: (text) {
                    if (onChanged != null) {
                      onChanged!(text);
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    hintText: hint,
                    errorStyle: TextStyle(
                        color: Colors.red[400],
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        height: 0),
                    fillColor: Color.fromRGBO(219, 221, 221, 1),
                    enabledBorder: InputBorders.enabled,
                    errorBorder: InputBorders.error,
                    focusedErrorBorder: InputBorders.error,
                    border: InputBorders.border,
                    focusedBorder: InputBorders.focused,
                  ),
                  style: AppStyle.style14
                      .copyWith(color: AppColors.textGrey, height: 0.8),
                  keyboardType: textInputType ?? TextInputType.text,
                  expands: maxLines == null ? true : false,
                  maxLines: maxLines,
                  minLines: null,
                  maxLength: maxLength,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputBorders {
  InputBorders._();

  static const border = OutlineInputBorder(
    borderRadius: Radiuses.r8,
    borderSide: BorderSide(
      color: AppColors.lightGrey,
      width: 0.3,
    ),
  );

  static const enabled = OutlineInputBorder(
    borderRadius: Radiuses.r8,
    borderSide: BorderSide.none,
  );

  static const error = OutlineInputBorder(
    borderRadius: Radiuses.r8,
    borderSide: BorderSide(
      color: AppColors.red,
      width: 0.3,
    ),
  );

  static const success = OutlineInputBorder(
    borderRadius: Radiuses.r8,
    borderSide: BorderSide(
      color: AppColors.lightGrey,
      width: 0.3,
    ),
  );

  static const focused = OutlineInputBorder(
    borderRadius: Radiuses.r8,
    borderSide: BorderSide(
      color: AppColors.lightGrey,
      width: 0.3,
    ),
  );
}

class Radiuses {
  Radiuses._();

  static const r8 = BorderRadius.all(Radius.circular(8));
}
