import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xian_infotech_interview/utils/asset_paths.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_button.dart';
import 'package:xian_infotech_interview/welcome_screen/view/widgets/logo_section.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Semantics(
      container: false,
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                AssetPaths.welcomePageBackground,
                cacheHeight: screenHeight.toInt(),
                cacheWidth: screenWidth.toInt(),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 9),
                  // Below Logo section contains,
                  // 1. Company logo.
                  // 2. Company name and details.
                  const LogoSection(),
                  const Spacer(flex: 5),

                  // Button for start.
                  CustomButton(
                    buttonHeight: screenHeight * 0.065,
                    buttonWidth: screenWidth * 0.5,
                    borderRadius: 30,
                    onTap: () {},
                    childWidget: Text(
                      "Get Started",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        height: 0.6,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Terms and Conditions',
                      style: GoogleFonts.rubik(
                        color: const Color(0xffA2A2A2),
                        height: 0.6,
                        fontSize: screenWidth * 0.03,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
