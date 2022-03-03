import 'current_universal_platform_none.dart'
    if (dart.io) 'current_universal_platform_io.dart'
    if (dart.html) 'current_universal_platform_html.dart';
import 'universal_platform_type.dart';

export 'universal_platform_type.dart' show UniversalPlatformType;

/// Based on dart:io's Platform
abstract class UniversalPlatform {
  static UniversalPlatformType get value => currentUniversalPlatform;

  static bool get isAndroid =>
      UniversalPlatform.value == UniversalPlatformType.Android;
  static bool get isFuchsia =>
      UniversalPlatform.value == UniversalPlatformType.Fuchsia;
  static bool get isIOS => UniversalPlatform.value == UniversalPlatformType.IOS;
  static bool get isLinux =>
      UniversalPlatform.value == UniversalPlatformType.Linux;
  static bool get isMacOS =>
      UniversalPlatform.value == UniversalPlatformType.MacOS;
  static bool get isWindows =>
      UniversalPlatform.value == UniversalPlatformType.Windows;

  static bool get isWeb => UniversalPlatform.value == UniversalPlatformType.Web;
  static bool get isOther =>
      UniversalPlatform.value == UniversalPlatformType.Other;

  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isMobile => isAndroid || isIOS;
}
