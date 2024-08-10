import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xian_infotech_interview/login_screen/provider/login_screen_provider.dart';
import 'package:xian_infotech_interview/login_screen/view/widgets/header_image.dart';
import 'package:xian_infotech_interview/utils/asset_paths.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_button.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_text_form_field.dart';


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