import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xian_infotech_interview/utils/asset_paths.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';

import 'widgets/home_card.dart';
import 'widgets/home_screen_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Below header contains,
            // 1. Open drawer button
            // 2. Text field for search
            // 3. Notification icon
            // 4. Log-out button
            const HomeScreenHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  Row(
                    children: [
                      Image.asset(AssetPaths.profile),
                      const SizedBox(width: 5),
                      const Text("View your\nprofile"),
                      const Spacer(),
                      Image.asset(
                        AssetPaths.logo,
                        height: screenWidth * 0.35,
                        width: screenWidth * 0.35,
                        cacheHeight: (screenWidth * 0.3).toInt(),
                        cacheWidth: (screenWidth * 0.3).toInt(),
                      ),
                    ],
                  ),
                  Text(
                    "Hello, Sharan",
                    style: GoogleFonts.rubik(
                      color: CustomColors.mainBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.09,
                    ),
                  ),
                  Text(
                    "What do you want donate today",
                    style: GoogleFonts.rubik(
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Card for Dashboard.
                  HomeCard(
                    cardColor: const Color(0xffebf0f8),
                    title: "Dashboard\n",
                    description: "View your dashboard & \ncheck your details",
                    imagePath: AssetPaths.bgImage,
                    onTap: () {},
                  ),
                  // Card for Transaction.
                  HomeCard(
                    cardColor: const Color(0xfffff2f0),
                    title: "Transactions\n",
                    description: "View your transaction & details",
                    imagePath: AssetPaths.transactionImage,
                    onTap: () {},
                  ),
                  // Card for Help.
                  HomeCard(
                    cardColor: const Color(0xffe7f8ec),
                    title: "Help Provided list\n",
                    description: "View your Help Provided list",
                    imagePath: AssetPaths.helpImage,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchTextEditingController.dispose();
    super.dispose();
  }
}
