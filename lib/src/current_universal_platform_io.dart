import 'dart:io';
import 'universal_platform_type.dart';

UniversalPlatformType get currentUniversalPlatform {
  if (Platform.isAndroid) return UniversalPlatformType.Android;
  if (Platform.isFuchsia) return UniversalPlatformType.Fuchsia;
  if (Platform.isIOS) return UniversalPlatformType.IOS;
  if (Platform.isLinux) return UniversalPlatformType.Linux;
  if (Platform.isMacOS) return UniversalPlatformType.MacOS;
  if (Platform.isWindows) return UniversalPlatformType.Windows;

  return UniversalPlatformType.Other;
}
