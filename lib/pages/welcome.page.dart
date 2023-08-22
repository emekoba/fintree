import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_button.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = '/';

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/welcome_backdrop.png'),
              fit: BoxFit.cover,
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
                  ).paddingSymmetric(horizontal: Get.width / 7),
                ),
                const Box(height: 40),
                FtButton(
                  onPressed: () {},
                  label: 'Sign up',
                ),
                const Box(),
                FtButton(
                  onPressed: () {},
                  label: 'Log in',
                  bordered: true,
                ),
              ],
            ),
          ).paddingAll(30),
        ],
      ),
    );
  }
}
