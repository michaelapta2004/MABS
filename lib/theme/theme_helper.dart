import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// themes and colors.
class ThemeHelper {
  // app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns primary colors
  PrimaryColors _getThemeColors() {
    //exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns current theme data.
  ThemeData _getThemeData() {
    //exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.orangeA70019.withOpacity(0.2),
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 380,
        space: 380,
        color: appTheme.whiteA700,
      ),
    );
  }

  /// Returns the primary colors
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Roboto Mono',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray900.withOpacity(0.9),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray80001,
          fontSize: 10.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 36.fSize,
          fontFamily: 'Rowdies',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 32.fSize,
          fontFamily: 'Roboto Mono',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Rowdies',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.blue200,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Righteous',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

///supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XE2216F14),
    secondaryContainer: Color(0XFF5C5C5C),

    // On colors(text colors)
    onPrimary: Color(0XFF0D1453),
    onPrimaryContainer: Color(0XFF979797),
  );
}

///custom colors for a primary theme.
class PrimaryColors {
  Color get black900 => Color(0XFF000000);

  Color get blue200 => Color(0XFF8FD6FF);

  Color get blueGray100 => Color(0XFFCCCCCC);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray500 => Color(0XFF42927F);
  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90001 => Color(0XFF2B2937);

  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray800 => Color(0XFF50381C);
  Color get gray80001 => Color(0XFF364037);
  Color get gray900 => Color(0XFF291A08);
  Color get gray90001 => Color(0XFF29220A);

  Color get gray900Fc => Color(0XFC282209);

  Color get green400 => Color(0XFF67A06B);
  Color get green40001 => Color(0XFF4ECB71);
  Color get green700 => Color(0XFF3A9A2B);
  Color get green900 => Color(0XFF1E6013);
  Color get green90001 => Color(0XFF1E6014);
  Color get greenA700 => Color(0XFF07E702);

  Color get indigo900 => Color(0XFF0E1554);

  Color get orangeA70019 => Color(0X19FF5C00);

  Color get red500 => Color(0XFFF03D3E);
  Color get red900 => Color(0XFFB01111);

  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
