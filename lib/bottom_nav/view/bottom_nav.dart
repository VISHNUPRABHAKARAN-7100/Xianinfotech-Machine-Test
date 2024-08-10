import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:xian_infotech_interview/home_screen/view/home_screen.dart';
import 'package:xian_infotech_interview/utils/asset_paths.dart';
import '../provider/bottom_nav_provider.dart';
import 'widgets/bottom_nav_icon.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final pages = [
    const HomeScreen(),
    const Page2(),
    const Page2(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<BottomNavProvider>(
      builder: (context, snapShot, child) => Scaffold(
        body: pages[snapShot.currentIndex],
        bottomNavigationBar: Container(
          height: screenHeight * 0.09,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Bottom navigation bar icon for QR Code scanning screen.
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 0,
                selectedIcon: AssetPaths.homeIcon,
              ),

              // Bottom navigation bar icon for Profile screen.
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 1,
                selectedIcon: AssetPaths.dashboardIcon,
              ),
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 2,
                selectedIcon: AssetPaths.jobCardIcon,
              ),
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 3,
                selectedIcon: AssetPaths.serverIcon,
              ),
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 4,
                selectedIcon: AssetPaths.userIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: false,
      child: const AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: Center(
            child: Text('Page2'),
          ),
        ),
      ),
    );
  }
}
