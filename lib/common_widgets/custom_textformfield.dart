import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData? icon;
  final bool isPassword;
  final bool disabled;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final int? maxLength;
  final TextInputType inputType;

  // New optional parameters for customization
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Color? errorColor;
  final double? borderRadius;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.icon,
    required this.controller,
    this.isPassword = false,
    this.validator,
    this.prefixWidget,
    this.suffixWidget,
    this.readOnly = false,
    this.onTap,
    this.disabled = false,
    this.maxLength,
    this.inputType = TextInputType.text,
    this.labelStyle,
    this.hintStyle,
    this.textStyle,
    this.fillColor,
    this.borderColor,
    this.errorColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = true;
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Determine styles using provided overrides or fallback to theme
    final labelStyle = widget.labelStyle ?? theme.textTheme.labelLarge;
    final hintStyle = widget.hintStyle ?? theme.textTheme.bodyLarge?.copyWith(color: theme.hintColor);
    final textStyle = widget.textStyle ?? theme.textTheme.bodyLarge;
    final fillColor = widget.fillColor ?? theme.inputDecorationTheme.fillColor ?? theme.colorScheme.surface;
    final borderColor = widget.borderColor ?? theme.inputDecorationTheme.enabledBorder?.borderSide.color ?? theme.dividerColor;
    final errorColor = widget.errorColor ?? theme.colorScheme.error;
    final borderRadius = widget.borderRadius ?? 8.0;

    Widget? prefixIcon;
    if (widget.prefixWidget != null) {
      prefixIcon = widget.prefixWidget;
    } else if (widget.icon != null) {
      prefixIcon = Icon(widget.icon, color: borderColor);
    }

    Widget? suffixIcon;
    if (widget.isPassword) {
      suffixIcon = IconButton(
        icon: Icon(
          _isObscured ? Icons.visibility_off : Icons.visibility,
          color: borderColor,
        ),
        onPressed: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
      );
    } else if (widget.suffixWidget != null) {
      suffixIcon = widget.suffixWidget;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          widget.label,
          style: labelStyle,
        ),
        SizedBox(height: 0.8.h),

        // TextFormField
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword ? _isObscured : false,
          cursorColor: borderColor,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          enabled: !widget.disabled,
          maxLength: widget.maxLength,
          keyboardType: widget.inputType,
          validator: widget.validator,
          style: textStyle,
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: widget.hintText,
            hintStyle: hintStyle,
            filled: true,
            fillColor: fillColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: errorColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
          ),
          onChanged: (value) {
            if (widget.validator != null) {
              setState(() {
                _errorText = widget.validator!(value);
              });
            }
          },
        ),

        // Error message
        if (_errorText != null && _errorText!.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 0.5.h, left: 2.w),
            child: Text(
              _errorText!,
              style: theme.textTheme.bodySmall?.copyWith(color: errorColor),
            ),
          ),
      ],
    );
  }
}
