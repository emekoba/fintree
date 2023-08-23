import 'package:fintree/widgets/dismiss_keyboard.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
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
  final bool? showHeaderActionButton;
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
    this.showHeaderActionButton,
    this.onHeaderCloseButtonPress,
    this.headerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: appBar,
      body: SafeArea(
        child: DismissKeyboard(
          child: Column(
            children: [
              showHeader == true
                  ? Container(
                      height: headerHeight ?? 90,
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                      width: Get.width,
                      color: headerColor ?? Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              showBackButton == true
                                  ? const Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.black,
                                      size: 20,
                                    )
                                  : const SizedBox(),
                              Expanded(
                                child: Center(
                                  child: FtText(
                                    headerTitle ?? "",
                                    weight: FontWeight.w700,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: (showHeaderActionButton == null) ||
                                        (showHeaderActionButton == false)
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: padding ?? const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
