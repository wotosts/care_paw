import 'package:flutter/material.dart';

class CPTextField extends StatelessWidget {
  const CPTextField(
      {super.key,
      required this.labelText,
      this.icon,
      this.controller,
      this.singleLine = true,
      this.enabled,
      this.textInputType,
      this.obscureText = false,
      this.onIconPressed});

  final String labelText;
  final IconData? icon;
  final TextEditingController? controller;
  final bool singleLine;
  final bool? enabled;
  final TextInputType? textInputType;
  final bool obscureText;
  final Function()? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          suffixIcon: icon != null
              ? IconButton(
                  icon: Icon(icon!),
                  onPressed: onIconPressed,
                )
              : null),
      controller: controller,
      maxLines: singleLine ? 1 : 100,
      minLines: 1,
      keyboardType: singleLine ? textInputType : TextInputType.multiline,
      enabled: enabled,
      obscureText: obscureText,
    );
  }
}
