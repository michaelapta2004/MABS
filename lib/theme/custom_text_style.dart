import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// collection of pre-defined text styles for customizing text appearance,
/// different font families and weights.
/// extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;
  static get bodyLargeInterOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeRhodiumLibre => theme.textTheme.bodyLarge!.rhodiumLibre;
  static get bodyLargeRighteousOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.righteous.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyLargeRobotoWhiteA700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
      );
  static get bodySmallGreen900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green900.withOpacity(0.89),
      );
  static get bodySmallRobotoMonoWhiteA700 =>
      theme.textTheme.bodySmall!.robotoMono.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoWhiteA700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallRoboto =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeRed900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red900,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto;
  static get titleLargeRobotoBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoBold_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoGray800 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRoboto_1 => theme.textTheme.titleLarge!.roboto;
  static get titleLargeRowdies => theme.textTheme.titleLarge!.rowdies;
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.9),
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBluegray900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoMono =>
      theme.textTheme.titleMedium!.robotoMono.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoMonoGreenA700 =>
      theme.textTheme.titleMedium!.robotoMono.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoMonoOnPrimaryContainer =>
      theme.textTheme.titleMedium!.robotoMono.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get rhodiumLibre {
    return copyWith(
      fontFamily: 'Rhodium Libre',
    );
  }

  TextStyle get robotoMono {
    return copyWith(
      fontFamily: 'Roboto Mono',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get rowdies {
    return copyWith(
      fontFamily: 'Rowdies',
    );
  }

  TextStyle get righteous {
    return copyWith(
      fontFamily: 'Righteous',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
