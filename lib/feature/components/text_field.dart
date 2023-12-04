import 'package:flutter/material.dart';

class CPTextField extends StatelessWidget {
  const CPTextField(
      {super.key,
      required this.labelText,
      this.icon,
      this.controller,
      this.singleLine = true});

  final String labelText;
  final IconData? icon;
  final TextEditingController? controller;
  final bool singleLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          suffixIcon: icon != null ? Icon(icon!) : null),
      controller: controller,
      maxLines: singleLine ? 1 : 100,
      minLines: 1,
      keyboardType: singleLine ? null : TextInputType.multiline,
    );
  }
}
