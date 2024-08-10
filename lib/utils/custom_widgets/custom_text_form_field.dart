import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom widget for create a custom textForm field for refactoring the code.
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    required this.validator,
    required this.textEditingController,
    this.keyboardType,
    this.inputFormatters,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.onTap,
    this.onChanged,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.readOnly = false,
    this.labelTextColor = const Color(0xFFC2C2C2),
    this.onFieldSubmitted,
    this.prefixIcon,
    this.borderRadius = 15,
    this.labelTextToCenter = false,
  });

  final String labelText;
  final bool obscureText;
  final String? Function(String?) validator;
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final TextInputAction textInputAction;
  final bool readOnly;
  final Color labelTextColor;
  final void Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final double borderRadius;
  final bool labelTextToCenter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: textEditingController,
      obscureText: obscureText,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        label: labelTextToCenter
            ? Center(child: Text(labelText))
            : Text(labelText),
        labelStyle: TextStyle(color: labelTextColor),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      maxLines: maxLines,
      onTapOutside: (event) {
        // Below command is for dispose the keyboard when
        //the user clicks outside of the text field.
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
    );
  }
}
