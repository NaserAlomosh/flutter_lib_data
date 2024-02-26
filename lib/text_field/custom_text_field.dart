import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Function(String?)? validator;
  final TextEditingController? controller;

  final Function(String?)? onChanged;

  final bool? readOnly;

  final TextStyle? textStyle;
  final BorderSide? borderSide;
  final Color? borderSideColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.validator,
    this.controller,
    this.onChanged,
    this.readOnly,
    this.textStyle,
    this.borderSideColor,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onChanged: onChanged,
      cursorColor: const Color(0xFF6D9886),
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 12.0,
        ),
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderSideColor ?? const Color(0xFF6D9886),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: borderSide ??
                  const BorderSide(
                    color: Color(0xFF6D9886),
                    width: 1.3,
                  ),
              borderRadius: BorderRadius.circular(30.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        hintStyle: hintStyle ??
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6D9886),
            ),
        hintText: hintText,
        suffixIcon: Align(
          widthFactor: 2.0,
          child: suffixIcon,
        ),
        suffixIconColor: const Color(0xFF6D9886),
        fillColor: backgroundColor ?? const Color(0xFFFFFFFF),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: textStyle ??
          const TextStyle(
            fontSize: 14,
            color: Color(0xFF6D9886),
          ),
    );
  }
}
