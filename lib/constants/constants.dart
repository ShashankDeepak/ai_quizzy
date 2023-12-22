import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const Color white = Colors.white;
const Color black = Colors.black;
Color accentColor = HexColor("F07F07");
Color secondyAccentColor = HexColor('E19C0E');

class Constant {
  static Text text(
    String data, {
    Key? key,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
  }) {
    return Text(
      data,
      key: key,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: TextStyle(
          fontFamily: 'Poppins',
          background: background,
          backgroundColor: backgroundColor,
          color: color ?? white,
          debugLabel: debugLabel,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          fontFamilyFallback: fontFamilyFallback,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          foreground: foreground,
          height: height,
          inherit: inherit,
          leadingDistribution: leadingDistribution,
          letterSpacing: letterSpacing,
          locale: locale,
          overflow: overflow,
          package: package,
          shadows: shadows,
          textBaseline: textBaseline,
          wordSpacing: wordSpacing),
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
    );
  }

  static TextStyle textStyle({
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return TextStyle(
      background: background,
      backgroundColor: backgroundColor,
      color: color,
      debugLabel: debugLabel,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      fontFamily: 'Poppins',
      fontFamilyFallback: fontFamilyFallback,
      fontFeatures: fontFeatures,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontVariations: fontVariations,
      fontWeight: fontWeight,
      foreground: foreground,
      height: height,
      inherit: inherit,
      leadingDistribution: leadingDistribution,
      letterSpacing: letterSpacing,
      locale: locale,
      overflow: overflow,
      package: package,
      shadows: shadows,
      textBaseline: textBaseline,
      wordSpacing: wordSpacing,
    );
  }

  static LinearGradient defaultGradient({
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<Color>? colors,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    GradientTransform? transform,
  }) {
    return LinearGradient(
      colors: colors ?? const [Color(0xFFD8CF7E), Color(0xFFF07F07)],
      begin: begin,
      end: end,
      stops: stops,
      tileMode: tileMode,
      transform: transform,
    );
  }

  static LinearGradient buttonGradient() {
    return defaultGradient(
      begin: const Alignment(1.00, -0.00),
      end: const Alignment(-1, 0),
    );
  }

  // Avatar Names ----------------------------------------------------------------
  static String shashankAvatar = "assets/Avatars/shashank.png";
  static String krishnAvatar = "assets/Avatars/krishn.png";
  static String ramAvatar = "assets/Avatars/ram.png";
  static String sandhyaAvatar = "assets/Avatars/sandhya.png";
  static String sayaneeAvatar = "assets/Avatars/sayanee.png";
  static String divyaAvatar = "assets/Avatars/divya.png";
}
