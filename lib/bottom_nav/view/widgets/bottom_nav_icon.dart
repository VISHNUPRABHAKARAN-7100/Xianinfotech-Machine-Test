import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../provider/bottom_nav_provider.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.pageIndexProvider,
    required this.pageIndex,
    required this.selectedIcon,
  });
  final BottomNavProvider pageIndexProvider;
  final int pageIndex;

  final String selectedIcon;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: screenWidth * 0.06,
      backgroundColor: pageIndexProvider.currentIndex == pageIndex
          ? const Color(0xFFf4f7fb)
          : Colors.white,
      child: IconButton(
        onPressed: () async {
          await HapticFeedback.vibrate();
          pageIndexProvider.changeIndex(pageIndex);
        },
        icon: Image.asset(
          selectedIcon,
          height: screenWidth * 0.07,
          width: screenWidth * 0.07,
        ),
      ),
    );
  }
}
