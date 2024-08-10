import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';

class ForgotPasswordSection extends StatelessWidget {
  const ForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Text(
              "Forgot Password?",
              style: GoogleFonts.rubik(
                color: CustomColors.mainBlue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
