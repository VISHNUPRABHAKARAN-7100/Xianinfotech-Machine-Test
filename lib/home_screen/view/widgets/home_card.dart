import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/custom_colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.cardColor,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.onTap,
  });

  final Color cardColor;
  final String title;
  final String description;
  final String imagePath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: SizedBox(
          height: screenHeight * 0.15,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title,
                          style: GoogleFonts.rubik(
                            color: CustomColors.mainBlue,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: description,
                          style: GoogleFonts.rubik(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(imagePath)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
