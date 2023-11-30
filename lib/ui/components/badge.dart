import 'package:flutter/material.dart';

class CPBadge extends StatelessWidget {
  const CPBadge({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: ShapeDecoration(
          color: theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)))),
      child: Text(
        text,
        style: theme.textTheme.bodySmall?.copyWith(
            fontSize: 8,
            color: theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
