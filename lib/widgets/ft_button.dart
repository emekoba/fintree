import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';

class FtButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? iconSize;
  final String? label;
  final Function onPressed;
  final Function? onDisabledPressed;
  final Widget? leadingIcon;
  final Widget? endIcon;
  final Widget? child;
  final bool? disabled;
  final bool? glazed;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? flex;
  final double? textSize;
  final double? borderRadius;
  final bool? bordered;
  final EdgeInsetsGeometry? padding;
  final double? leadingIconPadding;
  final double? endIconPadding;

  const FtButton({
    Key? key,
    this.height,
    this.width,
    this.label,
    required this.onPressed,
    this.disabled = false,
    this.bordered,
    this.leadingIcon,
    this.textColor,
    this.endIcon,
    this.glazed,
    this.flex,
    this.onDisabledPressed,
    this.textSize,
    this.child,
    this.borderRadius,
    this.padding,
    this.backgroundColor,
    this.leadingIconPadding,
    this.endIconPadding,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryTheme = Theme.of(context).colorScheme.primary;

    Widget modelButton() {
      return InkWell(
        onTap: disabled != null && disabled == true
            ? () => onDisabledPressed != null ? onDisabledPressed!() : () {}
            : () => onPressed(),
        child: Container(
          height: height,
          width: width,
          padding: padding ?? const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            border: Border.all(
              width: 2,
              color: bordered == true
                  ? (backgroundColor ?? Colors.white)
                  : Colors.transparent,
            ),
            color: glazed == true
                ? const Color(0xffd5c8f5)
                : bordered == true
                    ? Colors.transparent
                    : disabled == true
                        ? const Color(0xffd5c8f5)
                        : (backgroundColor ?? primaryTheme),
          ),
          child: flex == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon == null)
                      Container()
                    else ...[
                      leadingIcon!,
                      SizedBox(width: leadingIconPadding ?? 15),
                    ],
                    Expanded(
                      child: child ??
                          FtText(
                            center: true,
                            label ?? "",
                            size: textSize ?? 16,
                            color: textColor ?? Colors.white,
                            weight: FontWeight.w200,
                          ),
                    ),
                    if (endIcon == null)
                      Container()
                    else ...[
                      SizedBox(width: endIconPadding ?? 15),
                      endIcon!,
                    ],
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon == null)
                      Container()
                    else ...[
                      leadingIcon!,
                      SizedBox(width: leadingIconPadding ?? 15),
                    ],
                    child ??
                        FtText(
                          center: true,
                          label ?? "",
                          size: textSize,
                          color: textColor ?? Colors.white,
                          weight: FontWeight.w200,
                        ),
                    if (endIcon == null)
                      Container()
                    else ...[
                      SizedBox(width: endIconPadding ?? 15),
                      endIcon!,
                    ],
                  ],
                ),
        ),
      );
    }

    return modelButton();
  }
}
