/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsContactIconsGen {
  const $AssetsContactIconsGen();

  /// File path: assets/contact_icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/contact_icons/facebook.png');

  /// File path: assets/contact_icons/github.png
  AssetGenImage get github =>
      const AssetGenImage('assets/contact_icons/github.png');

  /// File path: assets/contact_icons/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/contact_icons/instagram.png');

  /// File path: assets/contact_icons/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/contact_icons/linkedin.png');

  /// File path: assets/contact_icons/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/contact_icons/whatsapp.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [facebook, github, instagram, linkedin, whatsapp];
}

class $AssetsServiceImagesGen {
  const $AssetsServiceImagesGen();

  /// File path: assets/service_images/mobileApp.png
  AssetGenImage get mobileApp =>
      const AssetGenImage('assets/service_images/mobileApp.png');

  /// File path: assets/service_images/ui_ux.png
  AssetGenImage get uiUx =>
      const AssetGenImage('assets/service_images/ui_ux.png');

  /// File path: assets/service_images/website.png
  AssetGenImage get website =>
      const AssetGenImage('assets/service_images/website.png');

  /// List of all assets
  List<AssetGenImage> get values => [mobileApp, uiUx, website];
}

class Assets {
  Assets._();

  static const $AssetsContactIconsGen contactIcons = $AssetsContactIconsGen();
  static const AssetGenImage imLogo = AssetGenImage('assets/im-logo.png');
  static const SvgGenImage mainLogo = SvgGenImage('assets/main_logo.svg');
  static const AssetGenImage profileImage =
      AssetGenImage('assets/profileImage.jpg');
  static const $AssetsServiceImagesGen serviceImages =
      $AssetsServiceImagesGen();
  static const AssetGenImage thebesLogo =
      AssetGenImage('assets/thebesLogo.png');
  /// List of all assets
  static List<dynamic> get values =>
      [imLogo, mainLogo, profileImage, thebesLogo];
}

 class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
