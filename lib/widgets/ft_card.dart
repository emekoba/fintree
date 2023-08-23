import 'package:flutter/material.dart';

class FtCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final Color? color;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const FtCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.color,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      margin: margin ?? const EdgeInsets.only(left: 5, right: 5),
      padding: padding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0xfffcfcfd),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Color(0xffeae9f0),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}

class CardIcon extends StatelessWidget {
  final Widget icon;
  final Color color;

  const CardIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: icon),
    );
  }
}
