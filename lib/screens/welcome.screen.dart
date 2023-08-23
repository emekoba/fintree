import 'package:fintree/screens/homeview.dart';
import 'package:fintree/static.dart';
import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_button.dart';
import 'package:fintree/widgets/ft_image.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FtImage(
              welcome1,
              type: FtImageTypes.asset,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent, // Top color (transparent)
                    Colors.transparent, // Top color (transparent)
                    Colors.black.withOpacity(0.8), // Bottom color (darker)
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const Expanded(
                  child: Box(),
                ),
                Center(
                  child: const FtText(
                    'Be happy with your finance',
                    size: 32,
                    center: true,
                    weight: FontWeight.w200,
                    color: Colors.white,
                  ).paddingSymmetric(horizontal: Get.width / 7),
                ),
                const Box(height: 40),
                FtButton(
                  onPressed: () {
                    Get.toNamed(HomeView.routeName);
                  },
                  label: 'Sign up',
                ),
                const Box(),
                FtButton(
                  onPressed: () {
                    Get.toNamed(HomeView.routeName);
                  },
                  label: 'Log in',
                  bordered: true,
                ),
              ],
            ).paddingAll(30),
          )
        ],
      ),
    );
  }
}
