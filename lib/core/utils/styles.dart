part of 'utils.dart';

class AppStyle {
  static TextStyle style12 = TextStyle(
    color: AppColors.black,
    fontSize: 12.sp,
  );
  static TextStyle style14 = TextStyle(
    color: AppColors.black,
    fontSize: 14.sp,
  );
  static TextStyle style14Bold = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
  static TextStyle style14Gray = TextStyle(
    color: AppColors.textGrey,
    fontSize: 14.sp,
  );
  static TextStyle style16 = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
  );
  static TextStyle style17 = TextStyle(
    color: AppColors.black,
    fontSize: 17.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style17Bold = TextStyle(
    color: AppColors.black,
    fontSize: 17.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style18 = TextStyle(
    color: AppColors.black,
    fontSize: 18.sp,
    height: 0,
  );

  static TextStyle style18Bold = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style20Bold = TextStyle(
    color: AppColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style20 = TextStyle(
    color: AppColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style22Bold = TextStyle(
    color: AppColors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style22 = TextStyle(
    color: AppColors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style24Bold = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style26Bold = TextStyle(
    color: AppColors.black,
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style32Bold = TextStyle(
    color: AppColors.black,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static BoxDecoration customWhiteDecoration = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(10));
  static InputDecoration dropDownFieldDecoration = InputDecoration(
    isCollapsed: true,
    //
    isDense: true,
    fillColor: AppColors.lightGrey,
    filled: true,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 0.w,
    ),

    errorStyle: TextStyle(
        color: Colors.red[400],
        fontWeight: FontWeight.w300,
        fontSize: 12.sp,
        height: 0),

    hintStyle: AppStyle.style20.copyWith(color: AppColors.textGrey),
  );
}
