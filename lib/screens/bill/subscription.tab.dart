import 'package:fintree/static.dart';
import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_card.dart';
import 'package:fintree/widgets/ft_image.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';

class SubscriptionTab extends StatelessWidget {
  const SubscriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Box(height: 20),
        const Column(
          children: [
            SizedBox(
              width: 150,
              child: FtText(
                "Your monthly payment for subscriptions",
                center: true,
              ),
            ),
            Box(),
            FtText(
              "\$61.88",
              size: 48,
              weight: FontWeight.w700,
            ),
          ],
        ),
        const Box(height: 50),
        FtCard(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FtImage(patreonIcon),
                      const Box(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FtText(
                            "Patreon membership",
                            size: 14,
                            color: Color(0xff433e5b),
                            weight: FontWeight.w400,
                          ),
                          Box(),
                          FtText(
                            "\$19.99/mo",
                            size: 16,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: Color(0xffaba88d),
                  )
                ],
              ),
              const Box(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FtImage(netflixIcon),
                      const Box(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FtText(
                            "Netflix",
                            size: 14,
                            color: Color(0xff433e5b),
                            weight: FontWeight.w400,
                          ),
                          Box(),
                          FtText(
                            "\$12/mo",
                            size: 16,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: Color(0xffaba88d),
                  )
                ],
              ),
              const Box(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FtImage(appleIcon),
                      const Box(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FtText(
                            "Apple payment",
                            size: 14,
                            color: Color(0xff433e5b),
                            weight: FontWeight.w400,
                          ),
                          Box(),
                          FtText(
                            "\$19.99/mo",
                            size: 16,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: Color(0xffaba88d),
                  )
                ],
              ),
              const Box(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FtImage(spotifyIcon),
                      const Box(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FtText(
                            "Spotify",
                            size: 14,
                            color: Color(0xff433e5b),
                            weight: FontWeight.w400,
                          ),
                          Box(),
                          FtText(
                            "\$6.99/mo",
                            size: 16,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: Color(0xffaba88d),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
