import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FtText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final bool? center;
  final TextDirection? textDirection;
  final FontWeight? weight;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final Color? color;
  final double? size;

  const FtText(
    this.text, {
    super.key,
    this.style,
    this.strutStyle,
    this.center,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.color,
    this.size,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontWeight: weight ?? FontWeight.normal,
        color: color ?? Colors.white,
        fontSize: size,
      ).merge(style),
      strutStyle: strutStyle,
      textAlign: center ?? false ? TextAlign.center : TextAlign.start,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
    );
  }
}
