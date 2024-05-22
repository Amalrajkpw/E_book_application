import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_constants.dart';

class AppThemeFactory {
  // Theme for  application light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightEleavatedButton,
    inputDecorationTheme: AppInputTheme.lightInputDecorationTheme,
    iconTheme: AppIconTheme.lightIconTheme,
    dividerColor: AppColors.lightContainerBackground,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue,
      onPrimaryContainer: AppColors.lightContainerBackground,
      secondary: AppColors.subTextColor,
      // color of tick in account creation screen
      onTertiary: AppColors.tickColor,
      // color of dividers in app
      onSurface: AppColors.dividerColor,
      // black color for app
      inversePrimary: Colors.black,
    ),
  );

  // Theme for   app light mode

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.dartTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButton,
    inputDecorationTheme: AppInputTheme.darkInputDecorationTheme,
    iconTheme: AppIconTheme.darkIconTheme,
    dividerColor: AppColors.darkContainerBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue,
      onPrimaryContainer: AppColors.lightContainerBackground,
      secondary: AppColors.subTextColor,
      // color of tick in account creation screen
      onTertiary: AppColors.tickColor,
      // color of dividers in app
      onSurface: AppColors.dividerColor,
      // white color for app
      inversePrimary: Colors.white,
    ),
  );
}

// Customized theme for icons

class AppIconTheme {
  AppIconTheme._();

  static const lightIconTheme = IconThemeData(
    color: Colors.black,
  );
  static const darkIconTheme = IconThemeData(
    color: Colors.white,
  );
}

// Customized theme for appbar

class AppAppBarTheme {
  AppAppBarTheme._();

  static final lightAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24.sp),
      actionsIconTheme: IconThemeData(color: Colors.black, size: 24.sp),
      titleTextStyle: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600));

  static final darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white, size: 24.sp),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24.sp),
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600));
}

// Customized theme for bottom sheet

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  // bottom sheet light theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));

  // bottom sheet dark mode

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.grey,
      modalBackgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
}

// Customized theme for elevated button

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

// elevated button for light theme
  static final lightEleavatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: AppColors.blue,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(vertical: 8.h),
    textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.appBlack),
  ));

// elevated button for dark theme
  static final darkElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(vertical: 8.h),
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          )));
}

// Customized theme for input field

class AppInputTheme {
  AppInputTheme._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    hintStyle: TextStyle(color: AppColors.subTextColor, fontSize: 14.sp),
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    labelStyle: const TextStyle(color: Colors.black),
    // Set border styles
    border: InputBorder.none,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );

  static final darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade200,
    labelStyle: const TextStyle(color: Colors.grey),
    hintStyle: TextStyle(color: AppColors.subTextColor, fontSize: 14.sp),
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent)),
    // Set border styles
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );
}

// Customized theme for text button

class AppTextButtonTheme {
  AppTextButtonTheme._();

  static final lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      // Text color
      backgroundColor: MaterialStateProperty.all(Colors.yellow),
      // Background color
      padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
      // Padding
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16.0, // Text font size
          fontWeight: FontWeight.bold, // Text font weight
        ),
      ),
    ),
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      // Text color
      backgroundColor: MaterialStateProperty.all(Colors.red),
      // Background color
      padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
      // Padding
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16.0, // Text font size
          fontWeight: FontWeight.bold, // Text font weight
        ),
      ),
    ),
  );
}

// Customized Theme data for fonts

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: TextStyle(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.appBlack),
      headlineMedium: TextStyle(
          fontSize: 27.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.appBlack),
      headlineSmall: TextStyle(
          fontSize: 22.sp, fontWeight: FontWeight.w600, color: Colors.black),
      titleLarge: TextStyle(
          fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.black),
      titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.subTextColor),
      titleSmall: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black),
      bodyLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.subTextColor),
      bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.appBlack),
      bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.subTextColor),
      displayLarge: TextStyle(
          fontSize: 11.sp, fontWeight: FontWeight.w600, color: AppColors.blue),
      displayMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.textBlue),
      displaySmall: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.subTextDark),
      labelLarge: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF535353)));
  static TextTheme dartTextTheme = TextTheme(
      headlineLarge: TextStyle(
          fontSize: 34.sp, fontWeight: FontWeight.w600, color: Colors.white),
      headlineMedium: TextStyle(
          fontSize: 27.sp, fontWeight: FontWeight.w600, color: Colors.white),
      headlineSmall: TextStyle(
          fontSize: 22.sp, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: TextStyle(
          fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.subTextColor),
      titleSmall: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.subTextColor,
      ),
      bodyMedium: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.w600, color: Colors.white),
      bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.subTextColor),
      displayLarge: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textBlue),
      displayMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.textBlue),
      displaySmall: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.subTextDark),
      labelLarge: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF535353)));
}
