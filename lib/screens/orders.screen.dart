import 'dart:math' as math;

import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_card.dart';
import 'package:fintree/widgets/ft_scaffold.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FtScaffold(
      showHeader: true,
      showBackButton: true,
      headerTitle: "Credit Score",
      padding: EdgeInsets.zero,
      body: Stack(
        children: [
          CircularStepProgressIndicator(
            totalSteps: 4,
            currentStep: 2,
            stepSize: 6,
            // selectedColor: Colors.white,
            // unselectedColor: Colors.white,
            padding: math.pi / 60,
            width: 360,
            height: 360,
            startingAngle: -math.pi * 2 / 1.34,
            arcSize: math.pi * 2 / 3 * 1.5,
            gradientColor: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor
              ],
            ),
            child: Column(
              children: [
                const Box(height: 60),
                const FtText(
                  "Good",
                  size: 14,
                  weight: FontWeight.w400,
                ),
                const FtText(
                  "660",
                  size: 48,
                  weight: FontWeight.w700,
                ),
                FtText(
                  "+6pts",
                  size: 14,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: Get.height / 4,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FtText(
                      "400",
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff908ba6),
                    ),
                    FtText(
                      "Last update on 20 jul 2020",
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff908ba6),
                    ),
                    FtText(
                      "850",
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff908ba6),
                    ),
                  ],
                ),
                Box(height: 50),
                FtCard(
                  child: Column(
                    children: [
                      CardRow(
                        title: "On-time payments",
                        total: "95%",
                        verdict: "Excellent",
                        missed: "1 missed",
                      ),
                      CardRow(
                        title: "Credit utilization",
                        total: "95%",
                        verdict: "Not bad",
                        color: Color(0xffF88736),
                        missed: "-15%",
                      ),
                      CardRow(
                        title: "Age of credit",
                        total: "8 years",
                        verdict: "Good",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ).paddingOnly(top: 30),
    );
  }
}

class CardRow extends StatelessWidget {
  final String title;
  final String total;
  final String verdict;
  final String? missed;
  final Color? color;

  const CardRow({
    super.key,
    required this.title,
    required this.total,
    required this.verdict,
    this.missed,
    this.color = const Color(0xff31B447),
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
                total,
                size: 16,
                weight: FontWeight.w700,
              ),
            ],
          ),
          const Box(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FtText(
                verdict,
                size: 14,
                color: color,
                weight: FontWeight.w400,
              ),
              if (missed != null)
                FtText(
                  missed ?? "",
                  size: 14,
                  weight: FontWeight.w400,
                  color: color != const Color(0xffF88736)
                      ? const Color(0xff908ba6)
                      : color,
                ),
            ],
          ),
          if (missed != null)
            const Column(
              children: [
                Box(height: 20),
                Divider(),
                Box(height: 20),
              ],
            ),
        ],
      ),
    );
  }
}
