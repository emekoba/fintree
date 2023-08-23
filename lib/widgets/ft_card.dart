import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_progress.dart';
import 'package:fintree/widgets/ft_text.dart';
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

class CardRow extends StatelessWidget {
  final String title;
  final double total;
  final double left;
  final double progress;
  final Color? progressColor;

  const CardRow({
    super.key,
    required this.title,
    required this.total,
    required this.left,
    required this.progress,
    this.progressColor = const Color(0xff6c63ff),
    r,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FtText(
                title,
                size: 16,
                weight: FontWeight.w700,
              ),
              FtText(
                "\$${total.toStringAsFixed(0)}",
                size: 16,
                weight: FontWeight.w700,
              ),
            ],
          ),
          const Box(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FtProgress(
                  max: 100,
                  current: progress,
                  color: progressColor!,
                ),
              ),
              const Box(width: 20),
              FtText(
                "Left \$${left.toStringAsFixed(0)}",
                size: 12,
                weight: FontWeight.w400,
                color: const Color(0xff908ba6),
              ),
            ],
          ),
        ],
      ),
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
