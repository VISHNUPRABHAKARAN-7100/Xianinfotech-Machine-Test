import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/asset_paths.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Center(
          child: Image.asset(
            AssetPaths.logo,
            width: screenWidth * 0.3,
            height: screenWidth * 0.3,
            cacheWidth: (screenWidth * 0.3).toInt(),
            cacheHeight: (screenWidth * 0.3).toInt(),
          ),
        ),
        Text(
          "Lifeline Kerala",
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontSize: screenWidth * 0.085,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Charitable Trust",
          style: GoogleFonts.rubik(
            color: Colors.white,
            height: 0.6,
            fontSize: screenWidth * 0.055,
          ),
        ),
      ],
    );
  }
}
