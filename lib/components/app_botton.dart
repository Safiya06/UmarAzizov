import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
 final VoidCallback? onPressed;
 
  const AppButton({
    super.key,
    required this.text,
    this.backgroundColor = const Color(0xFF1780C2),
    this.textColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(15),
      textColor: textColor,
      color: backgroundColor,
      height: 50,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
