import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// functions to make UI responsive

MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);

// ui reference
const num DESIGN_WIDTH = 360;
const num DESIGN_HEIGHT = 800;
const num DESIGN_STATUS_BAR = 0;

///set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
extension ResponsiveExtension on num {
  ///get device viewport width
  get _width {
    return mediaQueryData.size.width;
  }

  ///get device viewport height
  get _height {
    num statusBar = mediaQueryData.viewPadding.top;
    num bottomBar = mediaQueryData.viewPadding.bottom;
    num screenHeight = mediaQueryData.size.height - statusBar - bottomBar;
    return screenHeight;
  }

  ///set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
  double get h => ((this * _width) / DESIGN_WIDTH);

  ///set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
  double get v => (this * _height) / (DESIGN_HEIGHT - DESIGN_STATUS_BAR);

  ///set smallest px in image height and width
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  ///set text font size according to Viewport
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  /// Return double value with formatted according to provided fractionDigits
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }
}
