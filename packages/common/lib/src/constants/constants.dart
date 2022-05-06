import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

/// Default padding from all sides.
const kDefaultPaddingAll = EdgeInsets.all(20);

/// Screen dimensions
final kDeviceDimensions =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;

/// Default gap between widgets
const kDefaultGap = Gap(10);

/// Small gap between widgets
const kGapSmall = Gap(5);

/// Medium gap between widgets
const kGapMedium = Gap(20);

/// Large gap between widgets
const kGapLarge = Gap(30);
