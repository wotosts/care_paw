import 'package:flutter/material.dart';

class SizedSpacer extends StatelessWidget {
  const SizedSpacer({super.key, this.height, this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height ?? 0.0, left: width ?? 0.0),
    );
  }
}
