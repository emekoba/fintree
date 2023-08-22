import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = '/';

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/welcome_backdrop.png'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
