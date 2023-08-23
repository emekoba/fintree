import 'package:fintree/screens/homeview.dart';
import 'package:fintree/screens/overview.screen.dart';
import 'package:fintree/screens/welcome.screen.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fintree',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: "/homeview",
      routes: {
        WelcomeScreen.routeName: (ctx) => const WelcomeScreen(),
        HomeView.routeName: (ctx) => const HomeView(),
        OverviewScreen.routeName: (ctx) => const OverviewScreen(),
      },
    );
  }
}
