/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icon_google.jpg
  AssetGenImage get iconGoogle =>
      const AssetGenImage('assets/images/icon_google.jpg');

  /// File path: assets/images/img_empty.png
  AssetGenImage get imgEmpty =>
      const AssetGenImage('assets/images/img_empty.png');

  /// File path: assets/images/img_eror.png
  AssetGenImage get imgEror =>
      const AssetGenImage('assets/images/img_eror.png');

  /// File path: assets/images/img_hello.png
  AssetGenImage get imgHello =>
      const AssetGenImage('assets/images/img_hello.png');

  /// File path: assets/images/img_logo.png
  AssetGenImage get imgLogo =>
      const AssetGenImage('assets/images/img_logo.png');

  /// File path: assets/images/img_logo_app.png
  AssetGenImage get imgLogoApp =>
      const AssetGenImage('assets/images/img_logo_app.png');

  /// File path: assets/images/img_monboarding1.png
  AssetGenImage get imgMonboarding1 =>
      const AssetGenImage('assets/images/img_monboarding1.png');

  /// File path: assets/images/img_monboarding2.png
  AssetGenImage get imgMonboarding2 =>
      const AssetGenImage('assets/images/img_monboarding2.png');

  /// File path: assets/images/img_poster_lomba.jpg
  AssetGenImage get imgPosterLomba =>
      const AssetGenImage('assets/images/img_poster_lomba.jpg');

  /// File path: assets/images/img_question_done.png
  AssetGenImage get imgQuestionDone =>
      const AssetGenImage('assets/images/img_question_done.png');

  /// File path: assets/images/img_welcome.png
  AssetGenImage get imgWelcome =>
      const AssetGenImage('assets/images/img_welcome.png');

  /// File path: assets/images/onboarding1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding1.png');

  /// File path: assets/images/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding2.png');

  /// File path: assets/images/onboarding3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/onboarding3.png');

  /// File path: assets/images/onboarding4.png
  AssetGenImage get onboarding4 =>
      const AssetGenImage('assets/images/onboarding4.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        iconGoogle,
        imgEmpty,
        imgEror,
        imgHello,
        imgLogo,
        imgLogoApp,
        imgMonboarding1,
        imgMonboarding2,
        imgPosterLomba,
        imgQuestionDone,
        imgWelcome,
        onboarding1,
        onboarding2,
        onboarding3,
        onboarding4
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
