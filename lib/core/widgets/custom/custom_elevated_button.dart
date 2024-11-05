import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.child,
    this.onPressed,
    this.width = double.infinity,
    this.height = 45,
    this.backgroundColor = AppColors.primary,
    this.borderColor = Colors.transparent,
    this.foregroundColor = Colors.white,
  });

  final Widget? child;
  final void Function()? onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            minimumSize: WidgetStatePropertyAll(Size(width, height)),
            backgroundColor: WidgetStatePropertyAll(backgroundColor),
            foregroundColor: WidgetStatePropertyAll(foregroundColor),
            side: WidgetStatePropertyAll(
              BorderSide(
                color: borderColor,
              ),
            ),
          ),
      onPressed: onPressed,
      child: child,
    );
  }
}
