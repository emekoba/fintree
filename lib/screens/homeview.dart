import 'package:fintree/screens/expenses.screen.dart';
import 'package:fintree/screens/offers.screen.dart';
import 'package:fintree/screens/overview.screen.dart';
import 'package:fintree/screens/settings.screen.dart';
import 'package:fintree/static.dart';
import 'package:fintree/widgets/ft_image.dart';
import 'package:fintree/widgets/ft_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static String routeName = '/homeview';

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(initialPage: 1);
  bool verified = false;
  int pageIndex = 1;

  void changePage(int index) {
    _pageController.jumpToPage(index);
    setState(() => pageIndex = index);
  }

  BottomNavigationBarItem bnbItem({
    required int idx,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: FtImage.icon(
        idx == 0
            ? bnb1
            : idx == 1
                ? bnb2
                : idx == 2
                    ? bnb3
                    : bnb4,
        color: idx == pageIndex
            ? Theme.of(context).primaryColor
            : Theme.of(context).disabledColor,
        height: 24,
        width: 24,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FtScaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          OverviewScreen(),
          ExpensesScreen(),
          OffersScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          bnbItem(
            idx: 0,
            label: 'Overview',
          ),
          bnbItem(
            idx: 1,
            label: 'This Month',
          ),
          bnbItem(
            idx: 2,
            label: 'Orders',
          ),
          bnbItem(
            idx: 3,
            label: 'Settings',
          ),
        ],
        currentIndex: pageIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: changePage,
        iconSize: 28,
        // selectedFontSize: 12,
        // unselectedFontSize: 12,
      ),
    );
  }
}
