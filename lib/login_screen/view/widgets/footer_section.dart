import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/custom_colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.15),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?",
                style: GoogleFonts.rubik(
                  color: const Color(0xffA2A2A2),
                ),
              ),
              TextSpan(
                text: " Register now?",
                style: GoogleFonts.rubik(
                  color: CustomColors.mainBlue,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "By signing up, you are agree with our",
                style: GoogleFonts.rubik(
                  color: const Color(0xffA2A2A2),
                ),
              ),
              TextSpan(
                text: " Terms & Conditions",
                style: GoogleFonts.rubik(
                  color: CustomColors.mainBlue,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
