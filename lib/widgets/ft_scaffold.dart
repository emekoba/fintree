import 'package:fintree/widgets/dismiss_keyboard.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FtScaffold extends StatelessWidget {
  final Widget body;
  final bool? showHeader;
  final bool? showBackButton;
  final double? headerHeight;
  final String? headerTitle;
  final Color? backgroundColor;
  final Color? headerColor;
  final Function? onBackButtonPress;
  final bool? showHeaderCloseButton;
  final Function? onHeaderCloseButtonPress;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry? padding;
  final AppBar? appBar;

  const FtScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.padding,
    this.showHeader,
    this.headerTitle,
    this.showBackButton,
    this.onBackButtonPress,
    this.headerColor,
    this.appBar,
    this.showHeaderCloseButton,
    this.onHeaderCloseButtonPress,
    this.headerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: SafeArea(
        child: DismissKeyboard(
          child: Column(
            children: [
              showHeader == true
                  ? Container(
                      height: headerHeight ?? 120,
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: Get.width,
                      color: headerColor ?? Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  showBackButton == true
                                      ? const Icon(FontAwesomeIcons.arrowLeft)
                                      : const SizedBox(),
                                  SizedBox(
                                      width: showBackButton == true ? 20 : 0),
                                  FtText(
                                    headerTitle ?? "",
                                    weight: FontWeight.w700,
                                    size: 18,
                                  ),
                                ],
                              ),
                              Offstage(
                                offstage: (showHeaderCloseButton == null) ||
                                    (showHeaderCloseButton == false),
                                child: const Icon(
                                  FontAwesomeIcons.xmark,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: padding ?? const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: body,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
