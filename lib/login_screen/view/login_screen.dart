import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xian_infotech_interview/login_screen/provider/login_screen_provider.dart';
import 'package:xian_infotech_interview/utils/asset_paths.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_button.dart';
import 'package:xian_infotech_interview/utils/custom_widgets/custom_text_form_field.dart';

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
                SizedBox(
                  height: screenHeight * 0.4,
                  child: Center(
                    child: Image.asset(
                      AssetPaths.profile,
                      width: screenHeight * 0.2,
                      height: screenHeight * 0.2,
                      cacheHeight: (screenHeight * 0.2).toInt(),
                      cacheWidth: (screenHeight * 0.2).toInt(),
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          prefixIcon: Image.asset(
                            AssetPaths.messageIcon,
                          ),
                          labelText: "Username",
                          validator: (p0) {
                            return null;
                          },
                          textEditingController: _userNameTextEditingController,
                          suffixIcon: Image.asset(
                            AssetPaths.checkIcon,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Consumer<LoginScreenProvider>(
                          builder: (context, snapShot, child) =>
                              CustomTextFormField(
                            obscureText: snapShot.isPasswordVisible,
                            prefixIcon: Image.asset(
                              AssetPaths.lockIcon,
                            ),
                            labelText: "Password",
                            textInputAction: TextInputAction.send,
                            validator: (p0) {
                              return null;
                            },
                            // onChanged function for enable the
                            // visibility of eye button.
                            onChanged: (value) =>
                                snapShot.updatePassword(value),
                            textEditingController:
                                _passwordTextEditingController,
                            suffixIcon: snapShot.shouldShowVisibilityIcon
                                ? GestureDetector(
                                    onTap: () =>
                                        snapShot.changePasswordVisibility(),
                                    child: Image.asset(
                                      snapShot.isPasswordVisible
                                          ? AssetPaths.invisibilityIcon
                                          : AssetPaths.visibilityIcon,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
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
                ),
                const SizedBox(height: 10),
                Material(
                  elevation: 30,
                  shadowColor: const Color(0xFFE43598),
                  borderRadius: BorderRadius.circular(30.0),
                  child: CustomButton(
                    buttonWidth: screenWidth * 0.5,
                    buttonHeight: screenHeight * 0.06,
                    borderRadius: 30,
                    onTap: () {},
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
