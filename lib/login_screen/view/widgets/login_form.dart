import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/asset_paths.dart';
import '../../../utils/custom_widgets/custom_text_form_field.dart';
import '../../provider/login_screen_provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController userNameTextEditingController,
    required TextEditingController passwordTextEditingController,
  })  : _formKey = formKey,
        _userNameTextEditingController = userNameTextEditingController,
        _passwordTextEditingController = passwordTextEditingController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _userNameTextEditingController;
  final TextEditingController _passwordTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Form(
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
              builder: (context, snapShot, child) => CustomTextFormField(
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
                onChanged: (value) => snapShot.updatePassword(value),
                textEditingController: _passwordTextEditingController,
                suffixIcon: snapShot.shouldShowVisibilityIcon
                    ? GestureDetector(
                        onTap: () => snapShot.changePasswordVisibility(),
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
    );
  }
}
