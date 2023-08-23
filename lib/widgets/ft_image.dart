import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum FtImageTypes { asset, network }

enum FtImagePresets { icon }

// ignore: must_be_immutable
class FtImage extends StatefulWidget {
  final String value;
  final FtImageTypes? type;
  final BoxFit? fit;
  final Color? color;
  FtImagePresets? preset;
  double? height;
  double? width;

  FtImage(
    this.value, {
    super.key,
    this.height,
    this.width,
    this.type,
    this.fit,
    this.preset,
    this.color,
  });

  FtImage.icon(
    this.value, {
    super.key,
    this.height,
    this.width,
    this.type,
    this.fit,
    this.preset,
    this.color,
  }) {
    preset = FtImagePresets.icon;
  }

  @override
  State<FtImage> createState() => _FtImageState();
}

class _FtImageState extends State<FtImage> {
  bool isSVG = false;
  FtImageTypes deducedType = FtImageTypes.asset;

  @override
  void initState() {
    isSVG = widget.value.contains('.svg');
    deducedType = (widget.type) ??
        (widget.value.contains(RegExp(r'http|www', caseSensitive: false))
            ? FtImageTypes.network
            : FtImageTypes.asset);

    switch (widget.preset) {
      case FtImagePresets.icon:
        widget.height = 24;
        widget.height = 24;
        break;
      default:
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isSVG) {
      return SizedBox(
        height: widget.height,
        width: widget.width,
        child: Builder(builder: (context) {
          if (deducedType == FtImageTypes.asset) {
            return SvgPicture.asset(
              widget.value,
              fit: widget.fit ?? BoxFit.contain,
              color: widget.color ?? Colors.black,
            );
          }

          return SvgPicture.network(
            widget.value,
            fit: widget.fit ?? BoxFit.contain,
            color: widget.color ?? Colors.black,
          );
        }),
      );
    }

    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Builder(builder: (context) {
        if (deducedType == FtImageTypes.network) {
          return Image.network(
            widget.value,
            fit: widget.fit ?? BoxFit.contain,
          );
        }

        return Image.asset(
          widget.value,
          fit: widget.fit ?? BoxFit.contain,
        );
      }),
    );
  }
}
