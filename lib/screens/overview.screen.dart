import 'package:fintree/static.dart';
import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_card.dart';
import 'package:fintree/widgets/ft_image.dart';
import 'package:fintree/widgets/ft_progress.dart';
import 'package:fintree/widgets/ft_scaffold.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OverviewScreen extends StatefulWidget {
  static String routeName = '/expenses-screen';
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return FtScaffold(
      showHeader: true,
      showBackButton: true,
      headerTitle: "Expenses",
      showHeaderActionButton: true,
      body: ListView(
        children: [
          const Box(height: 20),
          const Column(
            children: [
              Text("September 2020"),
              Box(),
              FtText(
                "\$1,812",
                size: 48,
                weight: FontWeight.w700,
              ),
            ],
          ),
          const Box(height: 50),
          const FtCard(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FtText(
                          "Left to spend",
                          size: 14,
                          color: Color(0xff908ba6),
                        ),
                        Box(),
                        FtText(
                          "\$738",
                          size: 18,
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FtText(
                          "Monthly budget",
                          size: 14,
                          color: Color(0xff908ba6),
                        ),
                        Box(),
                        FtText(
                          "\$2,550",
                          size: 18,
                          weight: FontWeight.w700,
                        ),
                      ],
                    )
                  ],
                ),
                Box(height: 20),
                StepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 70,
                  size: 8,
                  padding: 0,
                  unselectedColor: Color(0xffeae9f0),
                  roundedEdges: Radius.circular(10),
                  selectedGradientColor: LinearGradient(
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                    colors: [
                      Color(0xfff46040),
                      Color(0xff56bada),
                      Color(0xff6347eb)
                    ],
                    // stops: [0.0, 1.0],
                  ),
                ),
              ],
            ),
          ),
          const Box(height: 20),
          FtCard(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CardIcon(
                          icon: FtImage(
                            carIcon,
                            height: 20,
                            width: 20,
                          ),
                          color: const Color(0xffECEAFB),
                        ),
                        const Box(width: 20),
                        const FtText(
                          "Auto & transport",
                          size: 16,
                          color: Color(0xff908ba6),
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                    const FtText(
                      "\$700",
                      size: 18,
                      color: Color(0xff908ba6),
                    ),
                  ],
                ),
                const Box(height: 30),
                const CardRow(
                  title: "Auto & transport",
                  total: 350,
                  left: 186,
                  progress: 80,
                ),
                const Box(height: 30),
                const CardRow(
                  title: "Auto & transport",
                  total: 250,
                  left: 120,
                  progress: 50,
                ),
              ],
            ),
          ),
          const Box(height: 20),
          FtCard(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CardIcon(
                          icon: FtImage(
                            receiptIcon,
                            height: 20,
                            width: 20,
                          ),
                          color: const Color(0xffFBEBEA),
                        ),
                        const Box(width: 20),
                        const FtText(
                          "Bill & utilities",
                          size: 16,
                          color: Color(0xff908ba6),
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                    const FtText(
                      "\$320",
                      size: 18,
                      color: Color(0xff908ba6),
                    ),
                  ],
                ),
                const Box(height: 30),
                const CardRow(
                  title: "Subscriptions",
                  total: 52,
                  left: 0,
                  progress: 100,
                  progressColor: Color(0xfff46040),
                ),
                const Box(height: 30),
                const CardRow(
                  title: "House service",
                  total: 138,
                  left: 0,
                  progress: 90,
                  progressColor: Color(0xfff46040),
                ),
                const Box(height: 30),
                const CardRow(
                  title: "Maintenance",
                  total: 130,
                  left: 30,
                  progress: 70,
                  progressColor: Color(0xfff46040),
                ),
              ],
            ),
          ),
        ],
      ),
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
