import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/route/routers.gr.dart';
import '../pages.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  static const route = AutoRoute(
    path: 'base',
    page: BasePage,
    initial: true,
    children: [
      HomePage.route,
      CategoryNewsPage.route,
    ],
  );

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        CategoryNewsRoute(),
      ],
      bottomNavigationBuilder: (_, tabRouter) => BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: tabRouter.activeIndex,
        selectedItemColor: const Color(0xFF4E73F8),
        unselectedItemColor: const Color(0xff757d8a),
        showUnselectedLabels: true,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        selectedLabelStyle: const TextStyle(color: Color(0xFF4E73F8)),
        onTap: (index) => tabRouter.setActiveIndex(index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            label: 'Category News',
            icon: Icon(Icons.newspaper_outlined),
            activeIcon: Icon(Icons.newspaper_outlined, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
