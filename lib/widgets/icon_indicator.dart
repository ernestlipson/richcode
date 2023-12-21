import 'package:flutter/material.dart';
import 'package:richard/colors.dart';

class IconIndicator extends StatelessWidget {
  const IconIndicator(
      {super.key,
      this.color = grey,
      this.secondaryColor,
      required this.leading,
      this.trailing,
      required this.text});
  final Color color;
  final Color? secondaryColor;
  final IconData leading;
  final IconData? trailing;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          leading,
          color: secondaryColor ?? color,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: secondaryColor),
        ),
        const SizedBox(
          width: 8,
        ),
        trailing == null
            ? const SizedBox.shrink()
            : Icon(
                Icons.arrow_downward,
                color: color,
              )
      ],
    );
  }
}
