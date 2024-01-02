import 'package:flutter/material.dart';
import 'package:mabs/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.25),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.35),
      );
  static BoxDecoration get fillBlack9001 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.33),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001.withOpacity(0.5),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900.withOpacity(0.34),
            appTheme.black900.withOpacity(0.34),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.gray900,
            appTheme.gray90001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToGray90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.gray900,
            appTheme.gray90001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimary,
            appTheme.indigo900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.indigo900,
            theme.colorScheme.onPrimary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.33),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.green400,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.33),
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9005 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.35),
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.25),
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.25),
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
