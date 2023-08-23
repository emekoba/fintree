import 'package:fintree/screens/bill/subscription.tab.dart';
import 'package:fintree/widgets/ft_box.dart';
import 'package:fintree/widgets/ft_scaffold.dart';
import 'package:fintree/widgets/ft_text.dart';
import 'package:flutter/material.dart';

class BillScreen extends StatefulWidget {
  static String routeName = '/bill-screen';
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  Map tabItems = {
    0: {
      "title": "Bills",
    },
    1: {
      "title": "Payments",
    },
    2: {
      "title": "Subscription",
    },
  };

  final PageController _pageController = PageController(initialPage: 2);
  int pageIndex = 2;

  void changePage(int index) {
    _pageController.jumpToPage(index);
    setState(() => pageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return FtScaffold(
      showHeader: true,
      showBackButton: true,
      headerTitle: "Bill",
      showHeaderActionButton: true,
      padding: EdgeInsets.zero,
      body: Column(
        children: [
          const Box(),
          Container(
            // height: 50,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffe5e5e5),
                  width: 1,
                ),
              ),
            ),

            child: Row(
              children: [
                ...tabItems.keys.map(
                  (e) => TabItem(
                    title: tabItems[e]["title"],
                    onTap: () => changePage(e),
                    selected: e == pageIndex,
                  ),
                ),
              ],
            ),
          ),
          const Box(height: 30),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Container(),
                Container(),
                const SubscriptionTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final bool selected;

  const TabItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: selected ? const Color(0xff6c63ff) : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: FtText(
            title,
            center: true,
            color: selected ? const Color(0xff6c63ff) : Colors.black,
          ),
        ),
      ),
    );
  }
}
