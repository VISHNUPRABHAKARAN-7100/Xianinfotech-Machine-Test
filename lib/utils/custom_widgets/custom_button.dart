import 'package:flutter/material.dart';
import 'package:xian_infotech_interview/utils/custom_colors.dart';

/// This screen is for creating a custom button.
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonWidth = double.infinity,
    this.buttonColor = CustomColors.mainBlue,
    this.buttonHeight = 60,
    required this.onTap,
    required this.childWidget,
    this.boxShadow,
    this.borderRadius = 10,
  });

  /// Variables for the custom button.
  final double buttonWidth;
  final double buttonHeight;
  final double borderRadius;
  final Color buttonColor;
  final void Function() onTap;
  final Widget childWidget;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow,
        ),
        width: buttonWidth,
        height: buttonHeight,
        child: childWidget,
      ),
    );
  }
}
