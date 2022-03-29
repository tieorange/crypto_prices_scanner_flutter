import 'package:flutter/material.dart';

/* Scaffold with safe area */
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.appBar,
    this.bottomNavBar,
    this.color,
    this.topSafeArea = true,
    this.bottomSafeArea = false,
  });

  final Widget body;
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavBar;
  final bool topSafeArea, bottomSafeArea;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      extendBody: true,
      backgroundColor: color,
      body: SafeArea(
        bottom: bottomSafeArea,
        top: topSafeArea,
        child: body,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
