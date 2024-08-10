import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xian_infotech_interview/bottom_nav/view/bottom_nav.dart';
import 'package:xian_infotech_interview/login_screen/view/widgets/header_image.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';
import 'package:xian_infotech_interview/utils/custom_page_route.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_button.dart';

import '../../utils/asset_paths.dart';
import '../../utils/custom_widgets/custom_text_form_field.dart';
import '../provider/login_screen_provider.dart';
import 'widgets/footer_section.dart';
import 'widgets/login_form.dart';
import 'widgets/forgot_password_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderImage(),
                const SizedBox(height: 10),
                // Below login form contains,
                // TextField for username and password
                LoginForm(
                  formKey: _formKey,
                  userNameTextEditingController: _userNameTextEditingController,
                  passwordTextEditingController: _passwordTextEditingController,
                ),

                const ForgotPasswordSection(),

                const SizedBox(height: 10),

                Material(
                  elevation: 30,
                  shadowColor: const Color(0xFFE43598),
                  borderRadius: BorderRadius.circular(30.0),
                  child: CustomButton(
                    buttonWidth: screenWidth * 0.5,
                    buttonHeight: screenHeight * 0.06,
                    borderRadius: 30,
                    onTap: () {
                      NavigationUtils.pushAndRemoveUntil(
                        context,
                        BottomNav(),
                      );
                    },
                    childWidget: Text(
                      "LOGIN",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                ),

                // Below widget will contains,
                // 1. Register now button.
                // 2. Terms and conditions button.
                const FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userNameTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }
}
