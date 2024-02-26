import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final BorderRadiusGeometry? shadowBorderRadius;
  final Color? colorShadow;

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    thiorizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.shadowBorderRadius,
    this.colorShadow,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: shadowBorderRadius ?? BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: colorShadow ?? Colors.grey,
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 30.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? const Color(0xFF6D9886),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 12,
              vertical: verticalPadding ?? 1,
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 46),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle,
        ),
      ),
    );
  }
}
